# Data Dictionary

This document describes the main tables included in the healthcare database and their attributes.

### Center

Stores healthcare facilities.

| Column  | Type | Description              |
| ------- | ---- | ------------------------ |
| id      | PK   | Unique center identifier |
| address | text | Physical address         |

### Hospital

Represents hospital centers.

| Column    | Type    | Description         |
| --------- | ------- | ------------------- |
| center_id | PK / FK | Reference to Center |

### Clinic

Represents clinic centers.

| Column    | Type    | Description         |
| --------- | ------- | ------------------- |
| center_id | PK / FK | Reference to Center |

### Unit

Represents hospital departments.

| Column             | Type    | Description         |
| ------------------ | ------- | ------------------- |
| id                 | PK      | Unit identifier     |
| name               | text    | Unit name           |
| floor              | integer | Floor number        |
| hospital_center_id | FK      | Associated hospital |

### HospitalRoom

Represents rooms inside hospital units.

| Column       | Type | Description     |
| ------------ | ---- | --------------- |
| id           | PK   | Room identifier |
| room_number  | text | Room number     |
| room_type_id | FK   | Room type       |
| unit_id      | FK   | Associated unit |

### RoomType

Defines categories of hospital rooms.

| Column | Type | Description          |
| ------ | ---- | -------------------- |
| id     | PK   | Room type identifier |
| name   | text | Room type name       |

### ConsultingRoom

Represents clinic consultation rooms.

| Column           | Type | Description         |
| ---------------- | ---- | ------------------- |
| id               | PK   | Room identifier     |
| room_number      | text | Room number         |
| purpose          | enum | Medicine or nursing |
| clinic_center_id | FK   | Associated clinic   |

### Employee

Stores employee information.

| Column       | Type    | Description         |
| ------------ | ------- | ------------------- |
| id           | PK      | Employee identifier |
| dni          | unique  | National ID         |
| full_name    | text    | Full name           |
| birth_date   | date    | Birth date          |
| phone        | text    | Phone number        |
| email        | text    | Email address       |
| salary       | numeric | Salary              |
| bank_account | text    | Bank account        |

### HospitalEmployee

Subtype of Employee.

| Column           | Type    | Description            |
| ---------------- | ------- | ---------------------- |
| employee_id      | PK / FK | Reference to Employee  |
| category         | text    | Professional category  |
| shift            | text    | Work shift             |
| hospital_room_id | FK      | Assigned hospital room |

### ClinicEmployee

Subtype of Employee.

| Column             | Type    | Description              |
| ------------------ | ------- | ------------------------ |
| employee_id        | PK / FK | Reference to Employee    |
| category           | enum    | Medicine or nursing      |
| consulting_room_id | FK      | Assigned consulting room |

### Patient

Stores patient data.

| Column          | Type   | Description         |
| --------------- | ------ | ------------------- |
| id              | PK     | Patient identifier  |
| dni             | unique | National ID         |
| full_name       | text   | Patient name        |
| birth_date      | date   | Birth date          |
| medical_history | text   | Medical history     |
| allergies       | text   | Allergy information |

### Appointment

Represents a medical visit.

| Column                | Type     | Description            |
| --------------------- | -------- | ---------------------- |
| id                    | PK       | Appointment identifier |
| start_datetime        | datetime | Appointment start time |
| patient_id            | FK       | Patient reference      |
| center_id             | FK       | Healthcare center      |
| attending_employee_id | FK       | Responsible employee   |

### Service

Represents medical services.

| Column           | Type    | Description        |
| ---------------- | ------- | ------------------ |
| id               | PK      | Service identifier |
| name             | text    | Service name       |
| price            | numeric | Service price      |
| duration_minutes | integer | Duration           |

### Medication

Represents medication inventory.

| Column               | Type    | Description           |
| -------------------- | ------- | --------------------- |
| id                   | PK      | Medication identifier |
| center_id            | FK      | Associated center     |
| name                 | text    | Medication name       |
| stock                | integer | Available units       |
| unit_cost            | numeric | Unit cost             |
| administration_price | numeric | Administration cost   |

### AppointmentService

Junction table for appointment services.

| Column         | Type    |
| -------------- | ------- |
| appointment_id | PK / FK |
| service_id     | PK / FK |

### AppointmentMedication

Junction table for appointment medications.

| Column         | Type    |
| -------------- | ------- |
| appointment_id | PK / FK |
| medication_id  | PK / FK |

### Invoice

Stores billing information.

| Column         | Type        | Description            |
| -------------- | ----------- | ---------------------- |
| id             | PK          | Invoice identifier     |
| amount         | numeric     | Total amount           |
| issue_date     | date        | Issue date             |
| due_date       | date        | Payment deadline       |
| bank_account   | text        | Payment account        |
| appointment_id | FK (unique) | Associated appointment |
