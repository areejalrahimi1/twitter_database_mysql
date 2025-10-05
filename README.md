# Twitter Database Project (MySQL)

## Overview
This project demonstrates a *relational database* design for a Twitter-like system, created using *MySQL Workbench*.  
It includes four main tables and their relationships, simulating users, tweets, likes, and follows.  

*Note:* This project is for training purposes only — all data is fictitious and randomly generated.

---

## Database Structure
- *Users* → Stores user information (username, email, password hash, salt, created date).
- *Tweets* → Contains tweets made by users, with automatic timestamps.
- *Likes* → Connects users and tweets to track liked posts.
- *Follows* → Stores user-follow relationships (self-referencing table).

Foreign keys are used to maintain relationships between tables.

---

## Key Features
- ER Diagram with all relationships (1:N, N:M)
- Stored Procedures for *Users* and *Tweets*
- Automatic timestamp for tweet creation
- Password encryption using *SHA2 + Salt*
- Data insertion for *Likes* and *Follows* handled via INSERT statements

---

## Technologies Used
- MySQL Workbench
- SQL Language
- ER Modeling
- Forward & Reverse Engineering

---

## Screenshots
1. *ER Diagram* – (https://github.com/user-attachments/assets/83a514ec-c3be-4e2d-a47d-61b9d16a1e27)
2. *Users Table* - (https://github.com/user-attachments/assets/55fdafdf-fb50-4557-93b3-e5936edd4b0b)
3. *Stored Procedure Execution* – (https://github.com/user-attachments/assets/a869cbc1-d97a-4e5b-a6d4-393b8b3e1ea0)

---

## How to Run
1. Import the .sql file into MySQL Workbench.
2. Execute the script to create tables and procedures.
3. Use CALL createUser(...) to add new users securely.
4. Query the tables to verify relationships and inserted data.

<img width="1440" height="900" alt="Users table screenshot" src="https://github.com/user-attachments/assets/55fdafdf-fb50-4557-93b3-e5936edd4b0b" />
<img width="1440" height="900" alt="ER" src="https://github.com/user-attachments/assets/83a514ec-c3be-4e2d-a47d-61b9d16a1e27" />
<img width="1440" height="900" alt="Call tweet" src="https://github.com/user-attachments/assets/a869cbc1-d97a-4e5b-a6d4-393b8b3e1ea0" />
