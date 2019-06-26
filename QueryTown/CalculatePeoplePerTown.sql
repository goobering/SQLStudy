SELECT COUNT(*) AS NumResidents, Address.Town
FROM Person, PersonAddress, Address
WHERE
PersonAddress.PersonId = Person.Id
AND
PersonAddress.AddressId = Address.Id
GROUP BY Address.Town
ORDER BY NumResidents, Town;