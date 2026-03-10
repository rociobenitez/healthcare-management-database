CREATE TABLE Center (
    id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Clinic (
    center_id INT PRIMARY KEY,
    FOREIGN KEY (center_id) REFERENCES Center(id)
);

CREATE TABLE Hospital (
    center_id INT PRIMARY KEY,
    FOREIGN KEY (center_id) REFERENCES Center(id)
);

CREATE TABLE RoomType (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Unit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    floor INT NOT NULL,
    hospital_center_id INT NOT NULL,
    FOREIGN KEY (hospital_center_id) REFERENCES Hospital(center_id)
);

CREATE TABLE ConsultingRoom (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_number INT NOT NULL,
    purpose ENUM('medicine', 'nursing') NOT NULL,
    clinic_center_id INT NOT NULL,
    FOREIGN KEY (clinic_center_id) REFERENCES Clinic(center_id)
);

CREATE TABLE HospitalRoom (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_number INT NOT NULL,
    room_type_id INT NOT NULL,
    unit_id INT NOT NULL,
    FOREIGN KEY (room_type_id) REFERENCES RoomType(id),
    FOREIGN KEY (unit_id) REFERENCES Unit(id)
);

CREATE TABLE Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(10) NOT NULL UNIQUE,
    full_name VARCHAR(255) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15),
    email VARCHAR(255) UNIQUE,
    salary DECIMAL(10,2),
    bank_account VARCHAR(34),
    center_id INT NOT NULL,
    FOREIGN KEY (center_id) REFERENCES Center(id)
);

CREATE TABLE ClinicEmployee (
    employee_id INT PRIMARY KEY,
    category ENUM('medicine', 'nursing') NOT NULL,
    consulting_room_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    FOREIGN KEY (consulting_room_id) REFERENCES ConsultingRoom(id)
);

CREATE TABLE HospitalEmployee (
    employee_id INT PRIMARY KEY,
    category ENUM('medicine', 'nursing', 'technician', 'auxiliary') NOT NULL,
    shift ENUM('morning', 'afternoon', 'night') NOT NULL,
    hospital_room_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    FOREIGN KEY (hospital_room_id) REFERENCES HospitalRoom(id)
);

CREATE TABLE Patient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(10) NOT NULL UNIQUE,
    full_name VARCHAR(255) NOT NULL,
    birth_date DATE,
    medical_history VARCHAR(500),
    allergies VARCHAR(255)
);

CREATE TABLE Appointment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_datetime DATETIME NOT NULL,
    patient_id INT NOT NULL,
    center_id INT NOT NULL,
    attending_employee_id INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(id),
    FOREIGN KEY (center_id) REFERENCES Center(id),
    FOREIGN KEY (attending_employee_id) REFERENCES Employee(id)
);

CREATE TABLE Service (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    duration_minutes INT NOT NULL
);

CREATE TABLE Medication (
    id INT AUTO_INCREMENT PRIMARY KEY,
    center_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    stock INT NOT NULL,
    unit_cost DECIMAL(10,2) NOT NULL,
    administration_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (center_id) REFERENCES Center(id)
);

CREATE TABLE Invoice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL UNIQUE,
    amount DECIMAL(10,2) NOT NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    bank_account VARCHAR(34) NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(id)
);

CREATE TABLE AppointmentMedication (
    appointment_id INT NOT NULL,
    medication_id INT NOT NULL,
    PRIMARY KEY (appointment_id, medication_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(id),
    FOREIGN KEY (medication_id) REFERENCES Medication(id)
);

CREATE TABLE AppointmentService (
    appointment_id INT NOT NULL,
    service_id INT NOT NULL,
    PRIMARY KEY (appointment_id, service_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(id),
    FOREIGN KEY (service_id) REFERENCES Service(id)
);