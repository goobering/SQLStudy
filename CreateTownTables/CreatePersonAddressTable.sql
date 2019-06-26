CREATE TABLE PersonAddress (
    PersonId INT NOT NULL,
    AddressId INT NOT NULL,

    CONSTRAINT PK_Person_Address
        PRIMARY KEY(PersonId, AddressId),
    CONSTRAINT FK_PersonAddress_Person
        FOREIGN KEY(PersonId) REFERENCES Person(Id),
    CONSTRAINT FK_PersonAddress_Address
        FOREIGN KEY(AddressId) REFERENCES Address(Id)
);