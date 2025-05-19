# Student Records Database



## Overview
The **Student Records Database** is a simple and well-structured database designed to manage information about students, instructors, courses, and enrollments. It helps organize and store data in a way that makes it easy to retrieve and maintain.

## What Does This Database Do?
1. **Stores Student Information**:
   - Keeps track of each student's details, including their name, email, date of birth, and gender.

2. **Stores Instructor Information**:
   - Maintains records of instructors, including their name and email.

3. **Manages Courses**:
   - Stores details about courses, such as the course name, credits, and the instructor teaching the course.

4. **Tracks Enrollments**:
   - Records which students are enrolled in which courses, along with the enrollment date and grades.

## How It Works
- **Students Table**: Contains all the details about students.
- **Instructors Table**: Contains all the details about instructors.
- **Courses Table**: Links courses to instructors and stores course details.
- **Enrollments Table**: Connects students to courses, creating a record of who is enrolled in what course.

## Key Features
- **Unique IDs**: Every student, instructor, course, and enrollment has a unique ID for easy identification.
- **Relationships**:
  - Students can enroll in multiple courses.
  - Each course is taught by one instructor.

![DATABASE ERD DIAGRAM](PLP-WEEK-8-ASSIGNMENT/Screenshot-from-2025-05-19-10-51-57.png)
- **Data Integrity**: The database ensures that:
  - No two students or instructors can have the same email.
  - A student cannot enroll in the same course more than once.

## Who Can Use This?
This database is perfect for:
- Schools or colleges that need to manage student records.
- Beginners learning about relational databases.
- Anyone who wants a simple system to track students, instructors, and courses.

## Example Use Case
Imagine a school where:
- John Doe (a student) enrolls in "Math 101" taught by Jane Smith (an instructor).
- The database will store:
  - John's details in the **Students** table.
  - Jane's details in the **Instructors** table.
  - "Math 101" in the **Courses** table.
  - John's enrollment in "Math 101" in the **Enrollments** table.

This makes it easy to track who is enrolled in which course and who is teaching it.

---

This database is simple, efficient, and easy to use for managing student records!
