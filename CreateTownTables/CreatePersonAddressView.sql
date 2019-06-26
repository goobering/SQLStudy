CREATE VIEW PersonAddressView AS
SELECT Person.Id AS PersonId, Person.FirstName, Person.LastName, Address.StreetAddress, Address.Town, Address.Postcode, Address.CountryFull
FROM Person, PersonAddress, Address
WHERE Person.Id = PersonAddress.PersonId
AND Address.Id = PersonAddress.AddressId;