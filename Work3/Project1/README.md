# Project 1: Student Record Management System

## Overview

An interactive command-line system for managing student academic records with automatic grade calculation and flexible viewing options. This project demonstrates advanced MATLAB programming concepts including data structures, user interaction, and conditional logic.

## Features

### Core Functionality
- **Student Registration**: Add students with names and minimum 5 subjects
- **Automatic Grading**: Convert numerical marks to letter grades
- **Multiple View Modes**: Flexible data retrieval and display options
- **Interactive Menu**: User-friendly command-line interface

### Grade Scale
| Marks Range | Letter Grade |
|-------------|--------------|
| 70 and above | A |
| 60 - 69 | B |
| 50 - 59 | C |
| 40 - 49 | D |
| Below 40 | F |

## File Structure

```
Project1/
└── student_records.m    # Complete student management system
```

## Usage Instructions

### Running the Program
```matlab
cd('Work3/Project1')
student_records
```

### Menu Options

1. **Add Student**
   - Enter student name
   - Specify number of subjects (minimum 5)
   - Input subject names and corresponding marks
   - Automatic grade calculation and storage

2. **Display All Records**
   - Shows complete database of all students
   - Displays all subjects with marks and grades

3. **Display Selected Student**
   - Search by student name
   - Shows complete record for specific student

4. **Display Selected Subject**
   - Search by subject name across all students
   - Shows how all students performed in a specific subject

5. **Display Selected Student + Subject**
   - Search for specific student-subject combination
   - Shows detailed performance for particular subject

6. **Exit**
   - Terminates the program

## Sample Session

```
===== STUDENT RECORD MANAGEMENT SYSTEM =====

1. Add Student
2. Display All Records
3. Display Selected Student
4. Display Selected Subject
5. Display Selected Student + Subject
6. Exit

Select an option: 1
Enter student name: Alice Johnson
Enter number of subjects (minimum 5): 5

Subject 1:
Enter subject name: Mathematics
Enter marks: 85

Subject 2:
Enter subject name: Physics
Enter marks: 78

Subject 3:
Enter subject name: Chemistry
Enter marks: 92

Subject 4:
Enter subject name: Biology
Enter marks: 73

Subject 5:
Enter subject name: English
Enter marks: 68

Student added successfully.
```

## Technical Implementation

### Data Structures
- **Struct Arrays**: Student records stored as MATLAB structures
- **Nested Structures**: Each student contains subject information
- **Dynamic Arrays**: Handles variable number of students and subjects

### Key Functions
- `student_records()`: Main program loop and menu system
- `addStudent()`: Handles student data input and validation
- `displayAll()`: Shows complete database
- `displayStudent()`: Searches and displays specific student
- `displaySubject()`: Shows subject performance across all students
- `displayStudentSubject()`: Displays specific student-subject combination

### MATLAB Concepts Demonstrated
- **Structure Manipulation**: Creating and managing complex data structures
- **User Input**: `input()` function for interactive data entry
- **Conditional Logic**: `if/elseif/else` for grade calculation
- **String Operations**: `strcmpi()` for case-insensitive comparisons
- **Loop Control**: `for` and `while` loops for data processing
- **Function Design**: Modular programming with separate functions
- **Error Handling**: Input validation and user feedback

## Requirements

- **MATLAB** R2016b or later
- **OR** GNU Octave 6.0 or later

No additional toolboxes required.

## System Requirements

- Minimum 5 subjects per student (enforced by validation)
- Marks must be numeric values
- Student names and subject names are case-insensitive for searches

## Data Persistence

- Data is stored in MATLAB workspace during session
- Records are maintained until program termination
- For permanent storage, data would need to be saved to files (extension possibility)

---

**Project Weight**: 15 marks  
**Difficulty**: Intermediate  
**Estimated Completion Time**: 2-3 hours
