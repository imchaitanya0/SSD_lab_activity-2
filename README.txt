In this project we explore how to use the stored procedure calls and the cursors in the MYSQL workbench.

To first use those procedure calls and cursor we should have a database that contains some data in it so that using these procedure calls and cursor we will retrieve the data from the database.

By using the following code we can create a database with some data in our mysql server.

CODE:
   CREATE DATABASE lab_activity_2;

   use lab_activity_2;

   -- Create Tables
CREATE TABLE Shows (
ShowID INT PRIMARY KEY,
Title VARCHAR(100),
Genre VARCHAR(50),
ReleaseYear INT
);
CREATE TABLE Subscribers (
SubscriberID INT PRIMARY KEY,
SubscriberName VARCHAR(100),
SubscriptionDate DATE
);
CREATE TABLE WatchHistory (
HistoryID INT PRIMARY KEY,
ShowID INT,
SubscriberID INT,
WatchTime INT,
-- Duration in minutes
FOREIGN KEY (ShowID) REFERENCES Shows(ShowID),
FOREIGN KEY (SubscriberID) REFERENCES
Subscribers(SubscriberID)
);
-- Insert Sample Data
INSERT INTO Shows (ShowID, Title, Genre, ReleaseYear) VALUES
(1,
'Stranger Things'
,
'Sci-Fi'
, 2016),
(2,
'The Crown'
,
'Drama'
, 2016),
(3,
'The Witcher'
,
'Fantasy'
, 2019);
INSERT INTO Subscribers (SubscriberID, SubscriberName,
SubscriptionDate) VALUES
(1,
(2,
(3,
'Emily Clark'
,
'2023-01-10'),
'Chris Adams'
,
'2023-02-15'),
'Jordan Smith'
,
'2023-03-05');
INSERT INTO WatchHistory (HistoryID, SubscriberID, ShowID,
WatchTime) VALUES
(1, 1, 1, 100),
(2, 1, 2, 10),
(3, 2, 1, 20),
(4, 2, 2, 40),
(5, 2, 3, 10),
(6, 3, 2, 10),
(7, 3, 1, 10);

using all the above code we created a database and and created some tables in it and added the values into the table.

now Question-1:
    ListAllSubscribers() – Stored procedure that uses a cursor to iterate through all
    Subscribers and prints their names.

   step-1: first to keep in mind, that you should navigate to the database that you are willing to use, by using the command "USE 'DATABASE_NAME'". 

   step-2: now by using the code in Q1.sql we initiate the stored procedure and also cursor as required to retrieve the data.

   step-3: for the first time we need to run the whole code after once we get the procedure call in database schemas then using that database calling the procedure call is enough to retrieve the data.
             I personally implemented the temporary table to store the data after each call and after ending the loop my code will output all the data that is retrieved from each call. 


Question-2:
step-1: use the database. 

step-2: write the code as in the Q2.sql. 

step-3: if running the code for the first time run the whole code otherwise just run the call to retrive the data.

step-4: after calling the function navigate to the result bar and get the desired results. 

Question-3:
step-1: use the database. 

step-2: write the code as in the Q3.sql. 

step-3: if running the code for the first time run the whole code otherwise just run the call to retrive the data.

step-4: after calling the function navigate to the result bar and get the desired results.

to run the question 4 and 5 just follow hte above same procedures.

GITHUB_LINK : https://github.com/imchaitanya0/SSD_lab_activity-2
