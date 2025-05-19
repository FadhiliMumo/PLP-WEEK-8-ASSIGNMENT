-- Create the database
CREATE DATABASE StudentRecords;
-- This creates a new database named 'StudentRecords'.

-- Use the database
USE StudentRecords;
-- This ensures that all subsequent operations are performed within the 'StudentRecords' database.

-- Create the Students table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY, 
    -- StudentID is the unique identifier for each student (Primary Key).
    -- AUTO_INCREMENT ensures that each new student gets a unique ID automatically.

    FirstName VARCHAR(50) NOT NULL,
    -- FirstName stores the student's first name. NOT NULL ensures this field cannot be empty.

    LastName VARCHAR(50) NOT NULL,
    -- LastName stores the student's last name. NOT NULL ensures this field cannot be empty.

    Email VARCHAR(100) UNIQUE NOT NULL,       
    -- Email stores the student's email address. UNIQUE ensures no two students can have the same email.
    -- NOT NULL ensures that every student must have an email address.

    DateOfBirth DATE NOT NULL,
    -- DateOfBirth stores the student's date of birth. NOT NULL ensures this field cannot be empty.

    Gender ENUM('Male', 'Female') NOT NULL
    -- Gender stores the student's gender. ENUM restricts the values to 'Male' or 'Female'.
    -- NOT NULL ensures that gender must be specified.
);

-- Create the Instructors table
CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY, 
    -- InstructorID is the unique identifier for each instructor (Primary Key).
    -- AUTO_INCREMENT ensures that each new instructor gets a unique ID automatically.

    FirstName VARCHAR(50) NOT NULL,
    -- FirstName stores the instructor's first name. NOT NULL ensures this field cannot be empty.

    LastName VARCHAR(50) NOT NULL,
    -- LastName stores the instructor's last name. NOT NULL ensures this field cannot be empty.

    Email VARCHAR(100) UNIQUE NOT NULL          
    -- Email stores the instructor's email address. UNIQUE ensures no two instructors can have the same email.
    -- NOT NULL ensures that every instructor must have an email address.
);

-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY, 
    -- CourseID is the unique identifier for each course (Primary Key).
    -- AUTO_INCREMENT ensures that each new course gets a unique ID automatically.

    CourseName VARCHAR(100) NOT NULL,
    -- CourseName stores the name of the course. NOT NULL ensures this field cannot be empty.

    Credits INT NOT NULL,
    -- Credits stores the number of credits assigned to the course. NOT NULL ensures this field cannot be empty.

    InstructorID INT NOT NULL,               
    -- InstructorID is a Foreign Key referencing the Instructors table.
    -- It ensures that each course is associated with a valid instructor.

    CONSTRAINT Instructor_fk FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
    -- Foreign Key constraint ensures that InstructorID in Courses matches an existing InstructorID in Instructors.
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY, 
    -- EnrollmentID is the unique identifier for each enrollment record (Primary Key).
    -- AUTO_INCREMENT ensures that each new enrollment gets a unique ID automatically.

    StudentID INT NOT NULL,                      
    -- StudentID is a Foreign Key referencing the Students table.
    -- It ensures that each enrollment is associated with a valid student.

    CourseID INT NOT NULL,                       
    -- CourseID is a Foreign Key referencing the Courses table.
    -- It ensures that each enrollment is associated with a valid course.

    EnrollmentDate DATE NOT NULL,
    -- EnrollmentDate stores the date when the student enrolled in the course. NOT NULL ensures this field cannot be empty.

    Grade CHAR(2),
    -- Grade stores the grade received by the student in the course. This field is optional.

    CONSTRAINT Student_fk FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    -- Foreign Key constraint ensures that StudentID in Enrollments matches an existing StudentID in Students.

    CONSTRAINT Course_fk FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    -- Foreign Key constraint ensures that CourseID in Enrollments matches an existing CourseID in Courses.

    CONSTRAINT StudentCourse_uc UNIQUE (StudentID, CourseID) 
    -- Unique constraint ensures that a student cannot enroll in the same course more than once.
);