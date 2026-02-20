# MATLAB Programming Assignments

[![MATLAB](https://img.shields.io/badge/MATLAB-R2016b%2B-blue?logo=mathworks)](https://www.mathworks.com/products/matlab.html)
[![Octave](https://img.shields.io/badge/GNU%20Octave-6.0%2B-blue?logo=octave)](https://octave.org)
[![GitHub](https://img.shields.io/badge/GitHub-Edwin420s%2FMatlab-black?logo=github)](https://github.com/Edwin420s/Matlab)

A collection of MATLAB/Octave scripts spanning two assignments: an **interactive grade calculator** demonstrating conditional logic, and a **mathematical graphing** exercise covering polynomials, trigonometric functions, and implicit curves.

---

## Table of Contents

- [Project Structure](#project-structure)
- [Requirements](#requirements)
- [Getting Started](#getting-started)
- [Work 1 — Grade Calculator](#work-1--grade-calculator)
  - [Grading Scale](#grading-scale)
  - [Scripts](#work-1-scripts)
  - [Example Session](#example-session)
- [Work 2 — Mathematical Graphing](#work-2--mathematical-graphing)
  - [Functions Plotted](#functions-plotted)
  - [Scripts](#work-2-scripts)
  - [Output Previews](#output-previews)
  - [Technical Notes](#technical-notes)
- [Key MATLAB Concepts Used](#key-matlab-concepts-used)

---

## Project Structure

```
Class/
├── README.md                  ← you are here
├── Work1/                     ← Assignment 1: Grade Calculator
│   ├── grade_switch_case.m    ← single-subject grader (switch/case)
│   ├── grade_switch_all.m     ← three-subject grader (switch/case)
│   ├── subject_grades.m       ← three-subject grader (if/elseif/else)
│   └── README.md
└── Work 2/                    ← Assignment 2: Graphing
    ├── graph.m                ← Part (a) — cubic polynomial
    ├── graph2.m               ← Part (b) — tangent function
    ├── graph3.m               ← Part (c) — elliptic curve
    ├── graph4.m               ← All parts combined (subplots)
    ├── README.md
    └── *.png                  ← sample output figures
```

---

## Requirements

- **MATLAB** R2016b or later  
  *or*  
- **GNU Octave** 6.0 or later (free, open-source — fully compatible with all scripts)

> No additional toolboxes are required.

---

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/Edwin420s/Matlab.git
cd Matlab
```

### Running Scripts

**MATLAB Desktop:**
1. Open MATLAB and navigate to the project folder.
2. Run any script by typing its name (without `.m`) in the Command Window:
   ```matlab
   cd('Work1')
   grade_switch_case
   ```

**GNU Octave (Terminal):**
```bash
# Install Octave if needed
sudo apt install octave        # Debian / Ubuntu
sudo dnf install octave        # Fedora

# Run a script
octave --no-gui Work1/grade_switch_case.m
octave --no-gui "Work 2/graph.m"
```

> **Note:** `matlab -batch` does not support interactive `input()` prompts. Use the MATLAB Desktop or GNU Octave for interactive sessions.

---

## Work 1 — Grade Calculator

Three scripts that prompt for subject marks and output letter grades. Two different control-flow approaches are demonstrated side by side.

### Grading Scale

| Marks        | Grade |
|--------------|-------|
| 70 and above | A     |
| 60 – 69      | B     |
| 50 – 59      | C     |
| 40 – 49      | D     |
| Below 40     | FAIL  |

### Work 1 Scripts

| File | Description |
|------|-------------|
| `grade_switch_case.m` | Prompts for **Math** marks only and assigns a grade using a `switch true` / `case (condition)` block. |
| `grade_switch_all.m` | Prompts for **Math, English, and Kiswahili** marks and assigns grades for all three subjects using `switch/case`. |
| `subject_grades.m` | Same three-subject grading as above but implemented with traditional `if / elseif / else` chains — useful for comparing the two control-flow styles. |

### Example Session

```
>> grade_switch_all
Enter your Math marks: 75
Enter your English marks: 58
Enter your Kiswahili marks: 39

Math grade is: A
English grade is: C
Kiswahili grade is: FAIL
```

---

## Work 2 — Mathematical Graphing

Four scripts that plot mathematical functions/curves across specified intervals.

### Functions Plotted

| Part | Expression | Interval | Plot Type |
|------|-----------|----------|-----------|
| **(a)** | `y = x³ - x` | `[-1.5, 1.5]` | Standard 2-D line plot |
| **(b)** | `y = tan(x)` | `[-2π, 2π]` | Line plot with asymptote handling |
| **(c)** | `y² = x³ - x` (elliptic curve) | `[-2.5, 2.5]` | Implicit contour plot |

### Work 2 Scripts

| File | Description |
|------|-------------|
| `graph.m` | Part **(a)** — plots the cubic polynomial `y = x³ - x` on `[-1.5, 1.5]`. |
| `graph2.m` | Part **(b)** — plots `y = tan(x)` on `[-2π, 2π]` with custom π-based tick labels. |
| `graph3.m` | Part **(c)** — plots the implicit locus `y² = x³ - x` using `meshgrid` + `contour`. |
| `graph4.m` | **Combined** — renders all three plots in a single figure using `subplot(3, 1, n)`. |

### Output Previews

Sample output plots are saved in the `Work 2/` directory:

| File | Content |
|------|---------|
| `output_a.png` | Cubic polynomial plot |
| `output_b.png` | Tangent function plot |
| `output_c.png` | Elliptic curve locus |
| `output_all.png` | All three subplots combined |

### Technical Notes

- **Part (b):** Asymptote discontinuities at `x = ±π/2, ±3π/2` are handled by replacing values where `|tan(x)| > 10` with `NaN`, preventing spurious vertical lines.
- **Part (c):** The implicit curve is plotted numerically using `meshgrid` and `contour` at level zero — no Symbolic Math Toolbox required.
- **`graph4.m`** reproduces all three parts in a single combined figure using `subplot(3, 1, n)`.

---

## Key MATLAB Concepts Used

| Concept | Description |
|---------|-------------|
| `input()` | Reads user input from the Command Window |
| `switch true / case (expr)` | Evaluates boolean expressions inside a switch block |
| `if / elseif / else` | Standard conditional branching |
| `disp()` | Prints output to the Command Window |
| `plot()` | 2-D line plotting |
| `contour()` | Draws contour lines at specified levels |
| `meshgrid()` | Creates 2-D grid coordinate matrices |
| `subplot()` | Arranges multiple plots in a single figure |
| `xlim() / ylim()` | Sets axis limits |
| `xticks() / xticklabels()` | Custom axis tick marks and labels |
| `NaN` masking | Suppresses unwanted data points (e.g., asymptotes) |

---

## Repository

[https://github.com/Edwin420s/Matlab](https://github.com/Edwin420s/Matlab)
