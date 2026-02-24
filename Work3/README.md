# Work 3 - MATLAB Programming Projects

This directory contains two MATLAB programming assignments that demonstrate fundamental programming concepts including data structures, user interaction, conditional logic, and mathematical visualization.

## Project Structure

```
Work3/
├── Project1/
│   └── student_records.m          # Student record management system
└── Project2/
    ├── subplot.m                  # Main subplot script
    ├── eq_a.m                     # Equation (a): y = x³ - x
    ├── eq_b.m                     # Equation (b): y = tan(x)
    └── eq_c.m                     # Equation (c): y² = x³ - x
```

---

## Project 1: Student Record Management System (15 marks)

### Overview
An interactive command-line system for managing student academic records with grade calculation and multiple viewing options.

### Features
- **Add Students**: Input student name and minimum 5 subjects with marks
- **Grade Calculation**: Automatic letter grade generation based on marks:
  - 70+ : A
  - 60-69 : B
  - 50-59 : C
  - 40-49 : D
  - <40 : F
- **Viewing Options**:
  1. Display all student records
  2. Display records for a selected student
  3. Display records for a selected subject
  4. Display specific student-subject combination

### Usage
```matlab
cd('Project1')
student_records
```

### Menu Options
1. **Add Student** - Enter student details and subject marks
2. **Display All Records** - Show complete database
3. **Display Selected Student** - Search by student name
4. **Display Selected Subject** - Search by subject name across all students
5. **Display Selected Student + Subject** - Search specific student-subject pair
6. **Exit** - Terminate program

---

## Project 2: Mathematical Function Subplots (10 marks)

### Overview
A visualization project that plots three mathematical equations in separate subplots and combines them in a fourth subplot.

### Equations Plotted

#### (a) Cubic Polynomial
- **Function**: `y = x³ - x`
- **Interval**: `[-1.5, 1.5]`
- **Color**: Blue

#### (b) Tangent Function
- **Function**: `y = tan(x)`
- **Interval**: `[-2π, 2π]`
- **Color**: Red
- **Note**: Asymptote handling with NaN masking for |y| > 10

#### (c) Elliptic Curve
- **Function**: `y² = x³ - x`
- **Interval**: `[-2.5, 2.5]`
- **Color**: Green
- **Note**: Plots both positive and negative branches

#### (d) Combined View
- All three equations plotted together with legend

### Usage
```matlab
cd('Project2')
subplot
```

### File Descriptions
- `subplot.m` - Main script that creates 2x2 subplot layout
- `eq_a.m` - Generates data for cubic polynomial
- `eq_b.m` - Generates data for tangent function with asymptote handling
- `eq_c.m` - Generates data for elliptic curve (both branches)

---

## Requirements

- **MATLAB** R2016b or later
- **OR** GNU Octave 6.0 or later (free alternative)

No additional toolboxes required.

---

## Key MATLAB Concepts Demonstrated

### Project 1
- **Structures**: Student data organization
- **User Input**: `input()` function for interactive data entry
- **Conditional Logic**: `if/elseif/else` for grade calculation
- **String Comparison**: `strcmpi()` for case-insensitive matching
- **Loops**: `for` loops for data processing
- **Functions**: Modular code organization

### Project 2
- **Mathematical Functions**: Element-wise operations with `.^`
- **Plotting**: `plot()`, `subplot()`, `title()`, `xlabel()`, `ylabel()`
- **Data Handling**: `linspace()` for domain generation
- **NaN Masking**: Handling discontinuities in tangent function
- **Legend**: `legend()` for multi-function plots
- **Grid**: `grid on` for better visualization

---

## Running the Projects

### In MATLAB Desktop
1. Navigate to the project directory
2. Run the main script:
   ```matlab
   cd('Work3/Project1')
   student_records
   ```
   or
   ```matlab
   cd('Work3/Project2')
   subplot
   ```

### In GNU Octave (Terminal)
```bash
cd('Work3/Project1')
octave --no-gui student_records.m

cd('Work3/Project2')
octave --no-gui subplot.m
```

---

## Sample Output

### Project 1 Sample Session
```
===== STUDENT RECORD MANAGEMENT SYSTEM =====

1. Add Student
2. Display All Records
3. Display Selected Student
4. Display Selected Subject
5. Display Selected Student + Subject
6. Exit

Select an option: 1
Enter student name: John Doe
Enter number of subjects (minimum 5): 5
Enter subject name: Mathematics
Enter marks: 85
Enter subject name: Physics
Enter marks: 78
...
Student added successfully.
```

### Project 2 Output
- Creates a 2x2 subplot figure
- Top-left: Cubic polynomial (blue)
- Top-right: Tangent function (red)
- Bottom-left: Elliptic curve (green, both branches)
- Bottom-right: All three functions combined with legend

---

## Technical Notes

- **Project 1** uses persistent data storage in MATLAB workspace during session
- **Project 2** handles tangent function asymptotes by replacing large values with NaN
- **Project 2** elliptic curve requires domain restriction to real values only
- Both projects demonstrate clean, modular programming practices
