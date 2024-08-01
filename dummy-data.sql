USE BOOK_STORE;

INSERT INTO AUTHOR (AuthorID, Name, Bio) VALUES
(1, 'Dante Alighieri', 'An Italian poet of the Middle Ages, famous for The Divine Comedy.'),
(2, 'James Joyce', 'An Irish modernist writer, best known for Ulysses.'),
(3, 'Jane Austen', 'An English novelist known for her romantic fiction, particularly Pride and Prejudice.'),
(4, 'George Orwell', 'An English writer and journalist, renowned for his dystopian novel 1984.'),
(5, 'Isaac Asimov', 'A Russian-born American author, famous for his works of science fiction, including the Foundation series.'),
(6, 'John Ronald Reuel Tolkien', 'An English writer, poet, and philologist, best known for The Lord of the Rings.'),
(7, 'Mary Shelley', 'An English novelist, best known for her Gothic novel Frankenstein.'),
(8, 'Arthur Conan Doyle', 'A British writer, famous for creating the detective Sherlock Holmes.'),
(9, 'Herman Melville', 'An American novelist, short story writer, and poet, best known for Moby-Dick.'),
(10, 'Leo Tolstoy', 'A Russian writer, widely regarded as one of the greatest novelists, known for War and Peace and Anna Karenina.');

INSERT INTO CATEGORY (CategoryID, CategoryName) VALUES
(1, 'Classic Literature'),
(2, 'Modernist Literature'),
(3, 'Romance'),
(4, 'Dystopian Fiction'),
(5, 'Science Fiction'),
(6, 'Fantasy'),
(7, 'Horror'),
(8, 'Mystery'),
(9, 'Adventure'),
(10, 'Historical Fiction');

INSERT INTO PUBLISHER (PublisherID, PublisherName, ContactEmail) VALUES
(1, 'Medieval Press', 'medieval.press@example.com'),
(2, 'Modernist House', 'modernist.house@example.com'),
(3, 'Regency Publishers', 'regency.publishers@example.com'),
(4, 'Future Vision Press', 'future_press@example.com'),
(5, 'Galaxy Books', 'galaxy_books@example.com'),
(6, 'Middle-earth Press', 'mid-earth.press@example.com'),
(7, 'Gothic House', 'goth-house@example.com'),
(8, 'Detective Classics', 'detective_classics@example.com'),
(9, 'Nautical Press', 'nautical-press@example.com'),
(10, 'Imperial Publications', 'imperial.publications@example.com');

INSERT INTO BOOK (BookID, Title, AuthorID, CategoryID, PublisherID, Price, ISBN, Stock) VALUES
(1, 'The Divine Comedy', 1, 1, 1, 19.99, '978-0000000001', 15),
(2, 'Ulysses', 2, 2, 2, 14.99, '978-0000000002', 30),
(3, 'Pride and Prejudice', 3, 3, 3, 18.99, '978-0000000003', 22),
(4, '1984', 4, 4, 4, 13.95, '978-0000000004', 28),
(5, 'Foundation', 5, 5, 5, 25.00, '978-0000000005', 12),
(6, 'The Lord of the Rings', 6, 6, 6, 10.99, '978-0000000006', 35),
(7, 'Frankenstein', 7, 7, 7, 8.99, '978-0000000007', 40),
(8, 'The Hound of the Baskervilles', 8, 8, 8, 9.99, '978-0000000008', 19),
(9, 'Moby-Dick', 9, 9, 9, 12.99, '978-0000000009', 37),
(10, 'War and Peace', 10, 10, 10, 15.99, '978-0000000010', 29),
(11, 'Animal Farm', 4, 4, 4, 17.50, '978-0000000011', 21),
(12, 'I, Robot', 5, 5, 5, 19.00, '978-0000000012', 16),
(13, 'Hobbit', 6, 6, 6, 11.99, '978-0000000013', 25),
(14, 'The Lost World', 8, 5, 4, 13.50, '978-0000000014', 32),
(15, 'Anna Karenina', 10, 3, 10, 23.00, '978-0000000015', 14);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Email, Phone) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '123-456-7890'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '987-654-3210'),
(3, 'Carol', 'Martinez', 'carol.martinez@example.com', '555-678-1234'),
(4, 'David', 'Lee', 'david.lee@example.com', '432-567-8923'),
(5, 'Eva', 'Brown', 'eva.brown@example.com', '321-765-9876'),
(6, 'Frank', 'Davis', 'frank.davis@example.com', '456-123-7890'),
(7, 'Gina', 'Taylor', 'gina.taylor@example.com', '654-321-8765'),
(8, 'Harry', 'Wilson', 'harry.wilson@example.com', '789-456-1232'),
(9, 'Irene', 'Moore', 'irene.moore@example.com', '213-456-7890'),
(10, 'Jack', 'White', 'jack.white@example.com', '321-654-9877');

INSERT INTO ADDRESS (AddressID, CustomerID, Street, City, State, ZipCode) VALUES
(1, 1, '123 Maple St', 'Anytown', 'CA', '90210'),
(2, 2, '456 Oak St', 'Othertown', 'NY', '10001'),
(3, 3, '789 Pine St', 'Centerville', 'TX', '75001'),
(4, 4, '321 Birch St', 'Lakeview', 'IL', '60060'),
(5, 5, '654 Cedar St', 'Hilltown', 'MA', '02120');

INSERT INTO CUSTOMER_ORDER (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 1, '2024-06-25', 19.99),
(2, 2, '2024-06-26', 14.99),
(3, 3, '2024-06-27', 18.99),
(4, 4, '2024-06-28', 27.90),
(5, 5, '2024-06-29', 25.00),
(6, 6, '2024-06-30', 32.97),
(7, 7, '2024-07-01', 17.98),
(8, 8, '2024-07-02', 9.99),
(9, 9, '2024-07-03', 12.99),
(10, 10, '2024-07-04', 15.99);

INSERT INTO ORDER_DETAIL (OrderDetailID, OrderID, BookID, Quantity, Price) VALUES
(1, 1, 1, 1, 19.99),
(2, 2, 2, 1, 14.99),
(3, 3, 3, 1, 18.99),
(4, 4, 4, 2, 13.95),
(5, 5, 5, 1, 25.00),
(6, 6, 6, 3, 10.99),
(7, 7, 7, 2, 8.99),
(8, 8, 8, 1, 9.99),
(9, 9, 9, 1, 12.99),
(10, 10, 10, 1, 15.99);

INSERT INTO PAYMENT (PaymentID, OrderID, PaymentMethod, PaymentDate, Amount) VALUES
(1, 1, 'Credit Card', '2024-06-25', 19.99),
(2, 2, 'Debit Card', '2024-06-26', 14.99),
(3, 3, 'PayPal', '2024-06-27', 18.99),
(4, 4, 'Cash', '2024-06-28', 27.90),
(5, 5, 'Check', '2024-06-29', 25.00),
(6, 6, 'Wire Transfer', '2024-06-30', 32.97),
(7, 7, 'Credit Card', '2024-07-01', 17.98),
(8, 8, 'Credit Card', '2024-07-02', 9.99),
(9, 9, 'Debit Card', '2024-07-03', 12.99),
(10, 10, 'PayPal', '2024-07-04', 15.99);

INSERT INTO REVIEW (ReviewID, BookID, CustomerID, Rating, ReviewText) VALUES
(1, 1, 1, 5, 'Absolutely stunning! A profound journey through the afterlife that left me speechless.'),
(2, 2, 2, 3, 'Interesting but very dense. Took me forever to get through, but some parts were brilliant.'),
(3, 3, 3, 5, 'Loved it! Such a charming and witty story. Couldn’t put it down.'),
(4, 4, 4, 4, 'A powerful read, though a bit too grim for my taste. Still, very thought-provoking.'),
(5, 5, 5, 4, 'Really fascinating ideas about the future. A bit slow at times, but worth it.'),
(6, 6, 6, 5, 'An epic adventure! Loved every minute of it. A must-read for fantasy fans.'),
(7, 7, 7, 3, 'Good, but not as scary as I expected. Still, an important book for its time.'),
(8, 8, 8, 5, 'Fantastic mystery! Sherlock Holmes is at his best in this one.'),
(9, 9, 9, 4, 'Great story, but the old-fashioned language made it hard to follow at times.'),
(10, 10, 10, 5, 'Amazing book! Such depth in characters and history. A long read, but totally worth it.'),
(11, 6, 1, 4, 'A magnificent story, but a bit too detailed for my taste. Still, it’s a classic.'),
(12, 7, 2, 5, 'A brilliant and terrifying tale. Mary Shelley’s writing is incredible.'),
(13, 8, 3, 4, 'A gripping mystery with plenty of twists. Holmes never disappoints.'),
(14, 9, 4, 3, 'The story was interesting, but the language was tough to get through.'),
(15, 10, 5, 4, 'A monumental work with great characters, but you need a lot of patience to finish it.');