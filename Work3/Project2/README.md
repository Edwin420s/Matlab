# Project 2: Mathematical Function Subplots

## Overview

A comprehensive mathematical visualization project that plots three different equations in separate subplots and combines them in a fourth subplot. This project demonstrates MATLAB's powerful plotting capabilities and mathematical function handling.

## Mathematical Functions

### (a) Cubic Polynomial
- **Equation**: `y = x³ - x`
- **Domain**: `[-1.5, 1.5]`
- **Color**: Blue
- **Plot Type**: Standard 2D line plot

### (b) Tangent Function
- **Equation**: `y = tan(x)`
- **Domain**: `[-2π, 2π]`
- **Color**: Red
- **Special Handling**: Asymptote discontinuity management

### (c) Elliptic Curve
- **Equation**: `y² = x³ - x`
- **Domain**: `[-2.5, 2.5]`
- **Color**: Green
- **Plot Type**: Both positive and negative branches

### (d) Combined View
- **All Equations**: Plotted together with legend
- **Color Coding**: Blue (cubic), Red (tangent), Green (elliptic)
- **Legend**: Mathematical notation for each function

## File Structure

```
Project2/
├── subplot.m      # Main script - creates 2x2 subplot layout
├── eq_a.m         # Generates data for cubic polynomial
├── eq_b.m         # Generates data for tangent function
└── eq_c.m         # Generates data for elliptic curve
```

## Usage Instructions

### Running the Visualization
```matlab
cd('Work3/Project2')
subplot
```

### Individual File Descriptions

#### `subplot.m`
Main orchestration script that:
- Creates a 2x2 subplot figure
- Calls individual equation functions
- Configures plot aesthetics (titles, labels, grid)
- Combines all functions in the fourth subplot

#### `eq_a.m`
Generates data for the cubic polynomial:
```matlab
function [x, y] = eq_a()
    x = linspace(-1.5, 1.5, 1000);
    y = x.^3 - x;
end
```

#### `eq_b.m`
Generates data for tangent function with asymptote handling:
```matlab
function [x, y] = eq_b()
    x = linspace(-2*pi, 2*pi, 2000);
    y = tan(x);
    % Handle asymptotes by replacing large values with NaN
    y(abs(y) > 10) = NaN;
end
```

#### `eq_c.m`
Generates data for elliptic curve (both branches):
```matlab
function [x, y_pos, y_neg] = eq_c()
    x = linspace(-2.5, 2.5, 1000);
    % Calculate real values only
    valid = x.^3 - x >= 0;
    x_valid = x(valid);
    y_pos = sqrt(x_valid.^3 - x_valid);
    y_neg = -sqrt(x_valid.^3 - x_valid);
end
```

## Output Layout

The program creates a 2×2 subplot arrangement:

```
┌─────────────────┬─────────────────┐
│   (a) y = x³ - x   │   (b) y = tan(x)   │
│     Blue Line      │     Red Line       │
├─────────────────┼─────────────────┤
│ (c) y² = x³ - x  │   (d) All Equations │
│   Green (±√)     │   Combined with     │
│                  │      Legend         │
└─────────────────┴─────────────────┘
```

## Technical Implementation Details

### Asymptote Handling
The tangent function has vertical asymptotes at `x = ±π/2, ±3π/2`. To prevent spurious vertical lines:
- Values where `|tan(x)| > 10` are replaced with `NaN`
- MATLAB automatically skips `NaN` values when plotting
- Creates clean, professional-looking plots

### Elliptic Curve Domain
For `y² = x³ - x` to have real solutions:
- Must satisfy `x³ - x ≥ 0`
- This occurs when `x ≤ -1` or `x ≥ 0`
- Both positive and negative square roots are plotted

### Plot Customization
- **Line Width**: 1.5 pixels for better visibility
- **Grid**: Enabled for all subplots
- **Labels**: Proper x and y axis labels
- **Titles**: Mathematical notation in subplot titles
- **Legend**: Positioned optimally in combined plot

## MATLAB Concepts Demonstrated

### Mathematical Operations
- **Element-wise Operations**: `.^` for power operations
- **Domain Generation**: `linspace()` for smooth curves
- **Conditional Logic**: Valid domain checking for real values

### Plotting Functions
- **Basic Plotting**: `plot()` for 2D line graphs
- **Subplot Layout**: `subplot(2,2,n)` for grid arrangement
- **Plot Enhancement**: `title()`, `xlabel()`, `ylabel()`, `grid on`
- **Legend Creation**: `legend()` with mathematical notation
- **Multi-line Plots**: `hold on` for overlapping plots

### Data Handling
- **NaN Masking**: Handling discontinuities and invalid values
- **Array Operations**: Vectorized computations for efficiency
- **Function Returns**: Multiple return values for complex data

## Requirements

- **MATLAB** R2016b or later
- **OR** GNU Octave 6.0 or later

No additional toolboxes required.

## Sample Output

When executed, the program displays:
1. **Top-left**: Smooth cubic polynomial curve
2. **Top-right**: Tangent function with clean asymptote breaks
3. **Bottom-left**: Elliptic curve showing both branches
4. **Bottom-right**: All three functions with color-coded legend

## Extensions Possibilities

- Add interactive features (zoom, pan)
- Include parameter controls for domain ranges
- Add export functionality for high-resolution images
- Implement animation for parameter variations
- Add statistical analysis of function properties

---

**Project Weight**: 10 marks  
**Difficulty**: Intermediate  
**Estimated Completion Time**: 1-2 hours
