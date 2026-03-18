CREATE DATABASE HealthBox

CREATE TABLE patient_details
([PatientID] int
,[PatientName] varchar (250)
,[InjuryType] varchar (250)
)

INSERT INTO patient_details(PatientID, PatientName, InjuryType)
VALUES ('001', 'Tania Wilson', 'ankle'),
       ('002', 'Keith Johnson', 'hip'),
       ('003', 'Keith Johnson', 'hip');

SELECT * FROM patient_details

CREATE TABLE appointments
([AppointmentDate] datetime
,[PatientID] int
,[ReferringDoc] varchar (250)
)

INSERT INTO appointments(AppointmentDate, PatientID, ReferringDoc)
VALUES ('2026-02-18', '001', 'Dr Boutolous'),
       ('2026-03-05', '002', 'Dr Green'),
       ('2026-03-17', '003', 'Dr Van der Merwe');

       SELECT * FROM appointments

       SELECT * FROM patient_details

--INNER JOIN

SELECT ReferringDoc, PatientName, InjuryType, AppointmentDate
FROM patient_details AS A
INNER JOIN appointments AS B
ON A.PatientID = B.PatientID;