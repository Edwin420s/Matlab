# MATLAB Grade Calculator

[![MATLAB](https://img.shields.io/badge/MATLAB-R2016b%2B-blue?logo=mathworks)](https://www.mathworks.com/products/matlab.html)
[![Octave](https://img.shields.io/badge/GNU%20Octave-6.0%2B-blue?logo=octave)](https://octave.org)
[![GitHub](https://img.shields.io/badge/GitHub-Edwin420s%2FMatlab-black?logo=github)](https://github.com/Edwin420s/Matlab)

A collection of MATLAB scripts that prompt the user for subject marks and output the corresponding letter grades. Two grading approaches are demonstrated: `if/elseif/else` chains and `switch/case` blocks.

---

## Grading Scale

| Marks        | Grade |
|--------------|-------|
| 70 and above | A     |
| 60 – 69      | B     |
| 50 – 59      | C     |
| 40 – 49      | D     |
| Below 40     | FAIL  |

---

## Files

| File | Description |
|------|-------------|
| `grade_switch_case.m` | Single-subject grader (Math only) using `switch/case` |
| `grade_switch_all.m` | Three-subject grader (Math, English, Kiswahili) using `switch/case` |
| `subject_grades.m` | Three-subject grader (Math, English, Kiswahili) using `if/elseif/else` |

---

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/Edwin420s/Matlab.git
cd Matlab
```

---

## Requirements

- **MATLAB** R2016b or later  
  *or*  
- **GNU Octave** 6.0 or later (free, open-source alternative — fully compatible with these scripts)

---

## How to Run

### Option 1 — MATLAB Desktop

1. Open MATLAB.
2. Navigate to the cloned folder using the **Current Folder** panel or the Command Window:
   ```matlab
   cd('path/to/Matlab')
   ```
3. Run any script by typing its name (without `.m`) in the Command Window:
   ```matlab
   grade_switch_case
   grade_switch_all
   subject_grades
   ```
4. Follow the prompts to enter marks (numeric values, e.g. `75`).

### Option 2 — GNU Octave (Terminal)

```bash
# Install Octave if not already installed
sudo apt install octave      # Debian/Ubuntu
sudo dnf install octave      # Fedora

# Run a script
octave --no-gui grade_switch_case.m
octave --no-gui grade_switch_all.m
octave --no-gui subject_grades.m
```

> **Note:** `matlab -batch` mode does not support interactive `input()` prompts.  
> Use the MATLAB Desktop or GNU Octave for interactive sessions.

---

## Example Session

```
Enter your Math marks: 75
Enter your English marks: 58
Enter your Kiswahili marks: 39

Math grade is: A
English grade is: C
Kiswahili grade is: FAIL
```

---

## Script Details

### `grade_switch_case.m`
Prompts for a single Math mark and uses a `switch true` block to evaluate boolean cases and assign a letter grade.

### `grade_switch_all.m`
Extends the `switch true` pattern to three subjects (Math, English, Kiswahili) and displays all three grades.

### `subject_grades.m`
Implements the same three-subject grading logic using traditional `if/elseif/else` chains — useful for comparing the two control-flow styles side by side.

---

## Key MATLAB Concepts Used

- `input()` — reads user input from the Command Window
- `switch true / case (condition)` — evaluates boolean expressions inside a switch block
- `if / elseif / else` — standard conditional branching
- `disp()` — prints output to the Command Window
- String concatenation with `[ ]`

---

## Repository

[https://github.com/Edwin420s/Matlab](https://github.com/Edwin420s/Matlab)
