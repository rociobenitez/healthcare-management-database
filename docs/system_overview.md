# System Overview

## Introduction

This database models a healthcare network composed of hospitals and clinics.

The system supports the management of:

- healthcare centers
- medical staff
- patients
- appointments
- medical services
- medication inventory
- billing and invoices

The design focuses on clear entity responsibilities, strong referential integrity, and extensibility for future backend systems.

## System Structure

The system is organized around several core domains:

1. Healthcare Centers
2. Organizational Structure
3. Employees
4. Patients and Appointments
5. Services and Medication
6. Billing

Each domain is represented through a group of related entities.

## Healthcare Centers

The system models healthcare facilities through the `Center` entity.

A center can be one of two types:

- **Hospital**
- **Clinic**

Both share common attributes but differ in their internal structure.

### Center

Stores common information for any healthcare facility.

Attributes include:

- id
- address

## Hospital Structure

Hospitals have an internal structure composed of:

- Units
- Hospital rooms

Relationships:

Hospital → Unit → HospitalRoom

### Unit

Represents a department within a hospital (e.g. ICU, Surgery).

### HospitalRoom

Represents physical rooms within hospital units.

### RoomType

Defines the type of hospital room.

Examples:

- operating room
- ICU
- recovery room

## Clinic Structure

Clinics contain **consulting rooms** where medical consultations take place.

### ConsultingRoom

Represents a consultation room within a clinic.

Attributes include:

- room number
- medical purpose
- associated clinic

## Employees

Employees are modeled using a **supertype-subtype structure**.

### Employee (Supertype)

Contains shared attributes:

- id
- DNI
- full name
- birth date
- phone
- email
- salary
- bank account

Each employee belongs to **one healthcare center**.

### Employee Specialization

Employees are specialized into two subtypes:

**ClinicEmployee**

Represents staff working in clinics.

**HospitalEmployee**

Represents staff working in hospitals.

Additional attributes include:

- professional category
- shift
- assigned room

## Patients

### Patient

Represents individuals receiving medical services.

Attributes include:

- id
- DNI
- full name
- birth date
- allergies
- medical history

A patient can have **multiple appointments**.

## Appointments

### Appointment

Represents a medical visit.

Attributes include:

- id
- start_datetime
- patient_id
- center_id
- attending_employee_id

Each appointment:

- belongs to one patient
- takes place in one center
- is handled by one employee

## Services

### Service

Represents a medical service that can be provided during an appointment.

Examples:

- consultation
- diagnostic test
- treatment procedure

Attributes:

- name
- price
- duration

Appointments and services have a **many-to-many relationship**.

## Medication

### Medication

Represents medications stored at each center.

Attributes:

- name
- stock
- unit cost
- administration price

Medication is linked to appointments through a **many-to-many relationship**.

## Billing

### Invoice

Represents the billing record for a medical appointment.

Attributes include:

- amount
- issue date
- due date
- bank account

Each appointment generates **exactly one invoice**.

Relationship:

Appointment → Invoice (1:1)

## System Relationships Summary

Key relationships in the system include:

| Relationship             | Cardinality |
| ------------------------ | ----------- |
| Hospital → Unit          | 1:N         |
| Unit → HospitalRoom      | 1:N         |
| Clinic → ConsultingRoom  | 1:N         |
| Center → Employee        | 1:N         |
| Patient → Appointment    | 1:N         |
| Appointment → Service    | N:N         |
| Appointment → Medication | N:N         |
| Appointment → Invoice    | 1:1         |

## Design Philosophy

The database was designed with the following principles:

- strong relational integrity
- normalization of entities
- separation of concerns
- clear specialization structures
- explicit representation of many-to-many relationships

The resulting model provides a solid foundation for future backend systems or analytics workflows.
