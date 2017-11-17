CREATE TABLE Pet_Owner(
	OwnerID			Int					NOT NULL,
	OwnerLastName	Char(35)			NOT NULL,
	OwnerFirstName	Char(45)			NOT NULL,
	OwnerPhone		Int					NOT NULL,
	OwnerEmail		Char(50)			NOT NULL,
	);
	
CREATE TABLE PET(
	PetID		Int			NOT NULL,
	PetName		Char(41)	NOT NULL,
	PetType		Char(10)	NOT NULL,
	PetBreed	Char(35)	NOT NULL,
	PetDOB		Date		NOT NULL,
	PetWeight	Float		NOT NULL,
	Ownerld		Int			NOT NULL,
		REFERENCES Pet_Owner(OwnerID)
	);