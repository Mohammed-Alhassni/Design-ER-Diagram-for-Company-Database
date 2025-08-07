use sparkToCode;


CREATE TABLE Employee (
    SSN VARCHAR(11) PRIMARY KEY,
    Fname VARCHAR(30) NOT NULL,
    Lname VARCHAR(30) NOT NULL,
    BirthDate DATE NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    DNUM INT NOT NULL,
    SuperSSN VARCHAR(11),
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM),
    FOREIGN KEY (SuperSSN) REFERENCES Employee(SSN)
);


CREATE TABLE Department (
    DNUM INT PRIMARY KEY,
    DName VARCHAR(50) NOT NULL UNIQUE,
    ManagerSSN VARCHAR(11) NOT NULL,
    HireDate DATE NOT NULL,
    
);

ALTER TABLE Department
ADD CONSTRAINT ManagerSSN
FOREIGN KEY (ManagerSSN) REFERENCES Employee(SSN);


CREATE TABLE Dept_Locations (
    DNUM INT NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY (DNUM, Location),
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);


CREATE TABLE Project (
    PNumber INT PRIMARY KEY,
    PName VARCHAR(50) NOT NULL,
    Location VARCHAR(50),
    City VARCHAR(50),
    DNUM INT NOT NULL,
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);


CREATE TABLE Works_On (
    SSN VARCHAR(11) NOT NULL,
    PNumber INT NOT NULL,
    WorkingHours DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (SSN, PNumber),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (PNumber) REFERENCES Project(PNumber)
);


CREATE TABLE Dependent (
    SSN VARCHAR(11) NOT NULL,
    DependentName VARCHAR(30) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    BirthDate DATE NOT NULL,
    PRIMARY KEY (SSN, DependentName),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);
