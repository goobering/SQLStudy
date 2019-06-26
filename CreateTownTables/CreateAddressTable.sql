CREATE TABLE Address(
    Id INT IDENTITY(1,1),
    StreetAddress NVARCHAR(100) NOT NULL,
    Town NVARCHAR(100) NOT NULL,
    Postcode NVARCHAR(8) NOT NULL,
    Country VARCHAR(2) NOT NULL,
    CountryFull NVARCHAR(100) NOT NULL,

	CONSTRAINT PK_Address
		PRIMARY KEY(Id)
);