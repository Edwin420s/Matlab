# Work 2 — MATLAB Graphing Assignment

## Overview

This assignment plots three mathematical functions/curves across specified intervals using MATLAB/Octave.

| Part | Expression | Interval |
|------|-----------|----------|
| (a) | `y = x³ - x` | `[-1.5, 1.5]` |
| (b) | `y = tan(x)` | `[-2π, 2π]` |
| (c) | `y² = x³ - x` (elliptic curve locus) | `[-2.5, 2.5]` |

---

## Files

| File | Description |
|------|-------------|
| `graph.m` | Part **(a)** — plots `y = x³ - x` on `[-1.5, 1.5]` |
| `graph2.m` | Part **(b)** — plots `y = tan(x)` on `[-2π, 2π]` |
| `graph3.m` | Part **(c)** — plots the implicit locus `y² = x³ - x` on `[-2.5, 2.5]` |
| `graph4.m` | **All parts** — combines (a), (b), and (c) as three subplots in a single figure |

---

## How to Run

### In MATLAB or Octave GUI
Open any file and press **F5**, or type in the command window:
```matlab
run('graph.m')
run('graph2.m')
run('graph3.m')
run('graph4.m')
```

### In Octave CLI (terminal)
```bash
cd "Work 2"
octave-cli graph.m
octave-cli graph2.m
octave-cli graph3.m
octave-cli graph4.m
```

---

## Notes

- **Part (b):** Discontinuities at `x = ±π/2, ±3π/2` are handled by setting values where `|tan(x)| > 10` to `NaN`, which prevents vertical lines from being drawn across asymptotes.
- **Part (c):** The implicit curve is plotted numerically using `meshgrid` and `contour` at level zero — no Symbolic Math Toolbox required.
- `graph4.m` reproduces all three parts in a single combined figure using `subplot(3, 1, n)`.
