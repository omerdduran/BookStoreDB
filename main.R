install.packages("DBI")
install.packages("RSQLite")
install.packages("ggplot2")

library(DBI)
library(RSQLite)
library(ggplot2)

# Specify the connection parameters required to connect to the MySQL database
conn <- dbConnect(RMySQL::MySQL(),
                  dbname = "BookStore",
                  host = "localhost",
                  port = 3306,
                  user = "root",
                  password = "password")

# Table listing query
tables <- dbListTables(conn)
print(tables)

# Reading tables
ADDRESS <- dbGetQuery(conn, "SELECT * FROM ADDRESS")
AUTHOR <- dbGetQuery(conn, "SELECT * FROM AUTHOR")
BOOK <- dbGetQuery(conn, "SELECT * FROM BOOK")
CATEGORY <- dbGetQuery(conn, "SELECT * FROM CATEGORY")
CUSTOMER <- dbGetQuery(conn, "SELECT * FROM CUSTOMER")
CUSTOMER_ORDER <- dbGetQuery(conn, "SELECT * FROM CUSTOMER_ORDER")
EMPLOYEE <- dbGetQuery(conn, "SELECT * FROM EMPLOYEE")
EMPLOYEE_HISTORY <- dbGetQuery(conn, "SELECT * FROM EMPLOYEE_HISTORY")
ORDER_DETAIL <- dbGetQuery(conn, "SELECT * FROM ORDER_DETAIL")
PAYMENT <- dbGetQuery(conn, "SELECT * FROM PAYMENT")
PUBLISHER <- dbGetQuery(conn, "SELECT * FROM PUBLISHER")
REVIEW <- dbGetQuery(conn, "SELECT * FROM REVIEW")

# Histogram showing the price distribution of books
ggplot(BOOK, aes(x = Price)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Book Price Distribution",
       x = "Price",
       y = "Count")

# Bar graph showing the average review score by book
avg_rating_by_book <- aggregate(Rating ~ BookID, data = REVIEW, mean)
avg_rating_by_book <- merge(avg_rating_by_book, BOOK, by.x = "BookID", by.y = "BookID")

ggplot(avg_rating_by_book, aes(x = Title, y = Rating)) +
  geom_bar(stat = "identity", fill = "purple", color = "black") +
  labs(title = "Average Review Rating by Book",
       x = "Book Title",
       y = "Average Rating") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Bar graph showing the order quantities of books
order_quantity_by_book <- aggregate(Quantity ~ BookID, data = ORDER_DETAIL, sum)
order_quantity_by_book <- merge(order_quantity_by_book, BOOK, by.x = "BookID", by.y = "BookID")

ggplot(order_quantity_by_book, aes(x = Title, y = Quantity)) +
  geom_bar(stat = "identity", fill = "pink", color = "black") +
  labs(title = "Order Quantity by Book",
       x = "Book Title",
       y = "Order Quantity") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Bar graph showing the distribution of payment methods
payment_method_counts <- as.data.frame(table(PAYMENT$PaymentMethod))
colnames(payment_method_counts) <- c("PaymentMethod", "Count")

ggplot(payment_method_counts, aes(x = PaymentMethod, y = Count)) +
  geom_bar(stat = "identity", fill = "purple", color = "black") +
  labs(title = "Payment Method Distribution",
       x = "Payment Method",
       y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Bar graph showing total order amounts of customers
total_order_amount_by_customer <- aggregate(TotalAmount ~ CustomerID, data = CUSTOMER_ORDER, sum)
total_order_amount_by_customer <- merge(total_order_amount_by_customer, CUSTOMER, by.x = "CustomerID", by.y = "CustomerID")

ggplot(total_order_amount_by_customer, aes(x = paste(FirstName, LastName), y = TotalAmount)) +
  geom_bar(stat = "identity", fill = "red", color = "black") +
  labs(title = "Total Order Amount by Customer",
       x = "Customer",
       y = "Total Order Amount") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))




