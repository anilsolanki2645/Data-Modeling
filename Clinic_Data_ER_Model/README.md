# Clinic_ER_Model (Oracle)

## DOCTOR Table:
This table stores information about doctors.
### Schema:
- **DOCTOR_KEY**: Primary key uniquely identifying each doctor.
- **DOCTOR_NAME**: Name of the doctor.
- **CITY**: City where the doctor is located.
- **PHONE_NUMBER**: Phone number of the doctor.
- **GENDER**: Gender of the doctor.
- **EXPERIENCE_YEAR**: Years of experience of the doctor.
- **EXPERTISE**: Area of expertise of the doctor.

## PATIENT Table:
This table stores information about patients.
### Schema:
- **PATIENT_KEY**: Primary key uniquely identifying each patient.
- **PATIENT_NAME**: Name of the patient.
- **PHONE_NUMBER**: Phone number of the patient.
- **GENDER**: Gender of the patient.
- **TREATMENT**: Type of treatment the patient is receiving.
- **ADDRESS**: Address of the patient.
- **AGE**: Age of the patient.

## TIME_TABLE:
This table stores information about time slots.
### Schema:
- **TIME_KEY**: Primary key uniquely identifying each time slot.
- **DAY**: Day of the month.
- **MONTH**: Month of the year.
- **QUARTER**: Quarter of the year.
- **YEAR**: Year.

## CLINIC Table:
This table represents the appointments made in the clinic.
### Schema:
- **DOCTOR_KEY**: Foreign key referencing the DOCTOR table, indicating which doctor the appointment is with.
- **PATIENT_KEY**: Foreign key referencing the PATIENT table, indicating which patient the appointment is for.
- **TIME_KEY**: Foreign key referencing the TIME_TABLE, indicating the time slot of the appointment.
- **CHARGE**: Charge for the appointment.
- **COUNT**: Count of appointments, possibly indicating multiple appointments within the same time slot.

## Explanation of Schema Types and Keys:
- **Schema Type**: These tables represent an Entity-Relationship (ER) model, a common type of data modeling used in relational databases.
- **Primary Key (PK)**: Unique identifiers for each record in a table. They ensure that each record can be uniquely identified.
- **Foreign Key (FK)**: These are keys that establish relationships between tables. They reference primary keys in other tables.

This data modeling represents a structured approach to storing information about doctors, patients, appointments, and time slots, facilitating efficient retrieval and manipulation of data for clinic management purposes. However, the perfection of this model depends on various factors such as the specific requirements of the clinic, performance considerations, and potential future expansions or changes.

