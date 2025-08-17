-- Vaccination Centers Table
CREATE TABLE VaccinationCenters (
    CenterID INT PRIMARY KEY,
    CenterName NVARCHAR(100),
    Region NVARCHAR(50));

INSERT INTO VaccinationCenters VALUES
(1, 'Downtown Health Hub', 'North'),
(2, 'Eastside Vaccination Site', 'East'),
(3, 'West End Clinic', 'West');

--Vaccinations Table
CREATE TABLE Vaccinations (
    VaccinationID INT PRIMARY KEY,
    CenterID INT,
    PatientID INT,
    VaccineType NVARCHAR(50),
    VaccinationDate DATE);

INSERT INTO Vaccinations VALUES
(1001, 1, 201, 'COVID-19', '2025-07-01'),
(1002, 1, 202, 'Flu', '2025-07-05'),
(1003, 2, 203, 'COVID-19', '2025-07-10'),
(1004, 2, 204, 'Flu', '2025-07-11'),
(1005, 3, 205, 'COVID-19', '2025-07-15'),
(1006, 3, 206, 'COVID-19', '2025-07-16');

--Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    Gender NVARCHAR(10));

INSERT INTO Patients VALUES
(201, 'Anna', 'Taylor', 28, 'Female'),
(202, 'Ben', 'Evans', 34, 'Male'),
(203, 'Cara', 'Mitchell', 42, 'Female'),
(204, 'Daniel', 'Scott', 19, 'Male'),
(205, 'Eva', 'Turner', 55, 'Female'),
(206, 'Frank', 'Green', 60, 'Male');

--List all patients vaccinated with COVID-19 after July 5, 2025, including their center name
SELECT p.PatientID, p.FirstName, p.LastName, v.VaccineType, v.VaccinationDate, c.CenterName
FROM Patients p
JOIN Vaccinations v ON p.PatientID = v.PatientID
JOIN VaccinationCenters c ON v.CenterID = c.CenterID
WHERE v.VaccineType = 'COVID-19' AND v.VaccinationDate > '2025-07-05';

--  Find distinct vaccine types administered per region
SELECT COUNT(DISTINCT v.VaccineType) AS #OfVaccines, c.Region
FROM Vaccinations v
JOIN VaccinationCenters c ON v.CenterID = c.CenterID
GROUP BY c.Region;


--Find average patient age per vaccine type, only for vaccines given more than once

SELECT v.VaccineType, AVG(p.Age) AS AverageAge, COUNT(*) AS VaccinationCount
FROM Vaccinations v
INNER JOIN Patients p ON v.PatientID = p.PatientID
GROUP BY v.VaccineType
HAVING COUNT(*) > 1;
