INSERT INTO PersonAddress(PersonId, AddressId)
SELECT Person.Id, Address.Id
FROM Person
INNER JOIN Address
    ON Address.Id = Person.Id;