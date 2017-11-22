CREATE TABLE PET_OWNER(
	OwnerID			Int					NOT NULL Primary Key, 
	OwnerLastName	NVarChar			NOT NULL,
	OwnerFirstName	NVarChar			NOT NULL,
	OwnerPhone		NVarChar			NOT NULL,
	OwnerEmail		NVarChar			NOT NULL,
);
	
CREATE TABLE PET(
	PetID		NVarChar(30)		NOT NULL,
	PetName		NVarChar(36)		NOT NULL,
	PetType		NVarChar(56)		NOT NULL,
	PetBreed	NVarChar(23)		NOT NULL,
	PetDOB		Date				NOT NULL,
	PetWeight	Float				NOT NULL,
	Ownerld		Int					NOT NULL,
	CONSTRAINT	PET_PK				Foreign Key(Ownerld)
		REFERENCES PET_OWNER (OwnerID)
);

CREATE TABLE INVOICE(
	InvoiceNumber		NVarChar	Primary Key,
	InvoiceDate			DateTime	NOT NULL,
	SubTotal			Float		NOT NULL,
	TaxPct				Float		NOT NULL,
	Total				Float		NOT NULL,
);

CREATE TABLE LINE_ITEM(
	InvoiceNumber		NVarChar	NOT NULL,
	LineNumber			NVarChar	NOT NULL,
	ProductNumber		NVarChar	NOT NULL,
	Quantity			NVarChar	NOT NULL,
	Unitprice			NVarChar	NOT NULL,
	Total				NVarChar	NOT NULL,
);

CREATE TABLE PRODUCT(
	ProductNumber			NVarChar	Primary Key,
	ProductType				NVarChar	NOT NULL,
	ProductDescription		NVarChar	NOT NULL,
	Unitprice				NVarChar	NOT NULL,
);

CREATE TABLE SEMINAR(
	SeminarID		NVarChar	Primary Key,
	SeminarDate		DateTime	NOT Null,
	Location		NVarChar	NOT NULL,
	SeminarTitle	NVarChar	NOT NULL,
);

CREATE TABLE SEMINAR_CUSTOMER(
	SeminarID	NVarChar	NOT NULL,
	CustomerID	NVarChar	NOT NULL,
);

CREATE TABLE CUSTOMER(
	CustomerID		NVarChar	Primary Key,
	FirstName		NVarChar	NOT Null,
	LastName		NVarChar	NOT NULL,
	Street			NVarChar	NOT NULL,
	Zip				NVarChar	NOT NULL,
);

CREATE TABLE ZIP_CITY(
	Zip		NVarChar	NOT NULL,
	City	NVarChar	NOT NULL,
);