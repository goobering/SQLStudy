SELECT FirstName, LastName, StreetAddress, Postcode
FROM PersonAddress
INNER JOIN Person
	ON PersonAddress.PersonId = Person.Id
INNER JOIN Address
	ON PersonAddress.AddressId = Address.Id;