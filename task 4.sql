-- Task 4: Aggregate Functions and Grouping
USE Hospitaldb;

-- 1. Total billing amount per patient
SELECT patient_id, SUM(total_amount) AS total_billed
FROM Billing
GROUP BY patient_id;
-- 2. Average consultation fee per patient
SELECT patient_id, AVG(consultation_fee) AS avg_consultation_fee
FROM Billing
GROUP BY patient_id;
-- 3. Number of appointments per doctor
SELECT doctor_id, COUNT(appointment_id) AS total_appointments
FROM Appointments
GROUP BY doctor_id;
-- 4. Total number of patients by gender
SELECT gender, COUNT(patient_id) AS total_patients
FROM Patients
GROUP BY gender;
-- 5. Number of nurses per department
SELECT department_id, COUNT(nurse_id) AS total_nurses
FROM Nurses
GROUP BY department_id;
-- 6. Number of doctors per department
SELECT department_id, COUNT(doctor_id) AS total_doctors
FROM Doctors
GROUP BY department_id;
-- 7. Total medicine charges per patient
SELECT patient_id, SUM(medicine_charge) AS total_medicines
FROM Billing
GROUP BY patient_id;
--  8. Number of patients assigned to each nurse
SELECT nurse_id, COUNT(patient_id) AS patients_assigned
FROM Nurse_Assignments
GROUP BY nurse_id;
-- 9. Number of room admissions per room
SELECT room_id, COUNT(patient_id) AS total_admissions
FROM Patient_Rooms
GROUP BY room_id;
-- 10. Number of appointments per day
SELECT appointment_date, COUNT(appointment_id) AS daily_appointments
FROM Appointments
GROUP BY appointment_date;