Select * From Parent;

SELECT Student_ID, Name
  FROM Student	
  WHERE Student_ID > 115;

SELECT State
  FROM Student
  GROUP BY State;

SELECT City
  FROM Payment_Log
  GROUP BY City;

SELECT Student.Name, Student.City, Parent.Name, Parent.Phone_Number
  FROM Student, Parent
  WHERE Student.Student_ID = Parent.Student_ID;
  
SELECT Student.Name, State
  FROM Student
  INNER JOIN Parent
  ON Student.Student_ID = Parent.Student_ID;
  
SELECT * FROM Instructor;

SELECT Instructor.Name, Part_Time_Pay
  FROM Instructor
  Where (Time_Status = P);
  
SELECT Instructor.Name, Full_Time_Salary
  FROM Instructor
  Where (Full_Time_Salary > 38000.00);
  
SELECT Student.Name, City, Student_ID
  FROM Student
  UNION
SELECT Parent.Name, Phone_Number, Student_ID
  FROM Parent;