CREATE TABLE `IS410FinalProject`.`Student` (
  `Student_ID` VARCHAR(7) NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(20) NULL,
  `State` VARCHAR(2) NULL,
  `ZIP` INT NULL,
  `DOB` VARCHAR(12)NULL,
  `Grade` INT(2) NULL,
  `Tuition` VARCHAR(10) NULL);
ALTER TABLE `IS410FinalProject`.`Student` 
ADD PRIMARY KEY (`Student_ID`);

CREATE TABLE `IS410FinalProject`.`Parent` (
  `Student_ID` VARCHAR(7) NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `Phone_Number` VARCHAR(10) NOT NULL,
  `Email_Address` VARCHAR(40) NOT NULL);


CREATE TABLE `IS410FinalProject`.`Student_Assignments` (
  `Student_ID` INT(7) NOT NULL,
  `Class_ID` INT(7) NOT NULL);

CREATE TABLE `IS410FinalProject`.`Payment_Log` (
  `Student_ID` INT(7) NOT NULL,
  `Payment_Amount` INT(10) NOT NULL,
  `Payment_Type` VARCHAR(6) NOT NULL,
  `Payment_Date` INT(8) NOT NULL,
  `Street` VARCHAR(35) NULL,
  `City` VARCHAR(20) NULL,
  `State` VARCHAR(2) NULL,
  `ZIP` INT(5) NULL);

CREATE TABLE `IS410FinalProject`.`Class` (
  `Class_ID` INT(3) NOT NULL,
  `Class_Grade` INT(2) NOT NULL,
  PRIMARY KEY (`Class_ID`));

CREATE TABLE `IS410FinalProject`.`Instructor_Assignments` (
  `Instructor_ID` INT(7) NOT NULL,
  `Class_ID` INT(7) NOT NULL);

CREATE TABLE `IS410FinalProject`.`Instructor` (
  `Instructor_ID` INT(10) NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `Street` VARCHAR(35) NOT NULL,
  `City` VARCHAR(20) NOT NULL,
  `State` VARCHAR(2) NOT NULL,
  `ZIP` VARCHAR(5) NOT NULL,
  `Time_Status` VARCHAR(1) NOT NULL,
  `Part_Time_Pay` INT(7) NULL,
  `Full_Time_Salary` INT(8) NULL,
  PRIMARY KEY (`Instructor_ID`));