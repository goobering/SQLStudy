/*
https://blogs.msdn.microsoft.com/samlester/2012/11/30/tsql-solve-it-your-way-finding-a-persons-current-age-based-on-birth-date/

To calculate the age based on birth date needs to take account of 2 considerations: year difference and the date was born.
Use the year difference as the base of the age calculation. If the current date is less than the date was born, then the age needs to minus 1 year.
Inspired by the dimensional surrogate integer date key, we can use the date integer format to perform the calculation. For example, if a birthdate is ‘2001-09-30’, and current date is ‘2012-10-01’, then we can use the difference (20121001 – 20010930) / 10000 to get the age 11. As in T-SQL Integer / Integer is always Integer. In the same example, if the current date is ‘2012-09-29’, then the result (20120929 – 20010930) / 10000 will be 10.
As we can’t directly convert the date format to integer value, I convert the date to char(8) first and use minus 0 to implicitly convert the char value to integer value.

*/

DROP TABLE IF EXISTS Person;

CREATE TABLE Person(
    Id INT IDENTITY(1,1) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL, 
    Age AS (Convert(Char(8), SYSDATETIME(),112) - 0 - Convert(char(8), [DateOfBirth], 112)) / 10000,

	CONSTRAINT PK_Person
		PRIMARY KEY(Id)
);