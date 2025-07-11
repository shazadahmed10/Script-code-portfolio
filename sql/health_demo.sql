-- Create patients table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1) );

-- Insert sample patients
INSERT INTO patients (patient_id, name, age, gender) VALUES
(1, 'Alice', 30, 'F'),
(2, 'Bob', 45, 'M'),
(3, 'Carol', 27, 'F'),
(4, 'Dan', 60, 'M');

-- Create visits table
CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    visit_date DATE,
    diagnosis VARCHAR(100),
    bill_amount DECIMAL(10, 2),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) );

-- Insert sample visits
INSERT INTO visits (visit_id, patient_id, visit_date, diagnosis, bill_amount) VALUES
(1001, 1, '2024-01-05', 'Flu', 100.00),
(1002, 2, '2024-01-10', 'Diabetes Check', 250.00),
(1003, 1, '2024-02-15', 'Checkup', 80.00),
(1004, 3, '2024-03-20', 'Cold', 50.00);

-- Select with renaming and filtering
SELECT
    name AS patient_name,
    age,
    gender
FROM patients
WHERE age > 40;

-- Join to get visit info with patient names
SELECT 
    p.name AS patient_name,
    v.visit_date,
    v.diagnosis,
    v.bill_amount
FROM patients p
LEFT JOIN visits v ON p.patient_id = v.patient_id;

-- Add a computed column (bill + 10% tax) and group by patient
SELECT 
    p.name AS patient_name,
    SUM(v.bill_amount) AS total_billed,
    SUM(v.bill_amount * 0.10) AS estimated_tax
FROM patients p
JOIN visits v ON p.patient_id = v.patient_id
GROUP BY p.name;

-- Cherry-picked stat: Patient with the highest total bill
SELECT 
    p.name AS patient_name,
    SUM(v.bill_amount) AS total_billed
FROM patients p
JOIN visits v ON p.patient_id = v.patient_id
GROUP BY p.name
ORDER BY total_billed DESC
LIMIT 1;
