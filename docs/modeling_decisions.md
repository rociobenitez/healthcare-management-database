# Modeling Decisions

This document describes the key architectural decisions taken during the database design.

The goal of these decisions was to maintain structural consistency while accurately modeling the healthcare domain.

## Center Specialization

The `Center` entity is modeled as a **supertype**.

Two subtypes extend it:

- Hospital
- Clinic

Both share the same primary key (`center_id`).

### Reasoning

This design allows:

- shared attributes to be stored once
- subtype-specific structures to be clearly separated

Examples:

| Entity   | Allowed Structure        |
| -------- | ------------------------ |
| Hospital | Units and hospital rooms |
| Clinic   | Consulting rooms         |

This prevents invalid structures such as clinics having hospital units.

## Hospital Organizational Structure

Hospitals are modeled with a hierarchical structure.

Hospital
→ Unit
→ HospitalRoom

### Reasoning

Hospitals are typically organized into departments or units.

Examples:

- ICU
- Surgery
- Emergency

Each unit can contain multiple rooms.

## Room Type Catalog

`RoomType` was created as an independent entity.

### Reasoning

Using a catalog table allows:

- extensibility
- reuse across rooms
- centralized management of room types

Example types:

- operating room
- ICU
- recovery room

## Employee Specialization

Employees share common personal and administrative attributes.

These are stored in the `Employee` entity.

Employees are then specialized into:

- `ClinicEmployee`
- `HospitalEmployee`

### Reasoning

This avoids:

- attribute duplication
- inconsistent employee structures

It also allows subtype-specific attributes such as:

| Subtype          | Attributes              |
| ---------------- | ----------------------- |
| HospitalEmployee | shift, hospital_room_id |
| ClinicEmployee   | consulting_room_id      |

## Appointment Responsibility

Each appointment is handled by **one employee**.

### Reasoning

The model assumes a primary responsible healthcare professional per appointment.

Additional staff could be modeled in the future through an additional relationship if needed.

## Services Relationship

Appointments may include multiple services.

Examples:

- consultation
- diagnostic test
- treatment

Because services can appear in many appointments, the relationship is modeled as:

Appointment ↔ Service

Using the junction table:

AppointmentService

## Medication Relationship

Medication administration during appointments is modeled through:

AppointmentMedication

This represents the medications used during a visit.

### Reasoning

This avoids storing medication information directly inside the appointment table.

## Invoice Design

Billing is modeled as a **1:1 relationship** between:

Appointment → Invoice

### Reasoning

Each appointment generates exactly one invoice.

Storing invoices separately allows:

- billing tracking
- payment management
- future financial reporting

## Referential Integrity

Foreign keys are used extensively to ensure:

- data consistency
- relationship validity
- prevention of orphan records

Examples include:

- appointment → patient
- appointment → center
- appointment → employee
- hospital_room → unit
- consulting_room → clinic

## Normalization Strategy

The model follows standard relational normalization principles.

Key goals included:

- eliminating redundancy
- separating independent entities
- ensuring atomic attributes
- representing relationships explicitly

## Future Extensions

The design supports future extensions such as:

- appointment status tracking
- payment status for invoices
- prescription records
- treatment history
- multi-employee appointments
- audit logging
