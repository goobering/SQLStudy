SELECT Person.FirstName, Person.LastName, Person.Age, Address.Town
FROM Person, Address, PersonAddress
WHERE Person.Id = PersonAddress.PersonId
AND Address.Id = PersonAddress.AddressId
AND Address.Town = 'London'
ORDER BY Person.Age;