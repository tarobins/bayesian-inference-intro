# Antigravity / Jetski Agent Rules: Bayesian Inference: A Practical Introduction

This repository maintains **Bayesian Inference: A Practical Introduction** in two parallel tracks with exact mathematical, structural, and narrative parity:
- **`r/`**: R implementation (Jupyter `ir` kernel, Base R, `optim`, `rethinking`, `coda`, `loo`, `MASS`).
- **`python/`**: Python implementation (Jupyter `python3` kernel, `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, `pandas`).

---

## 🚨 Core Directives for Jetski / Antigravity

### 1. Mandatory Dual-Track Parity
Whenever adding, modifying, debugging, or enhancing any notebook in this repository:
- **Never update only one language track in isolation.**
- Any change made to a notebook in `r/` (e.g. `01_frequentist_vs_grid_approximation.ipynb`) **MUST** immediately be mirrored in its counterpart in `python/` (and vice-versa).
- Maintain 1:1 parity in:
  - **Narrative & Explanations**: All markdown walkthroughs, Deep Dives, intuition, and tables must be present in both versions.
  - **Mathematical Equations**: LaTeX formulations and notation must match.
  - **Cell Structure**: Notebook flow, part headers, and exercise questions must align.
  - **Code Semantics**: The statistical logic (priors, likelihoods, seeds, data generation, sample sizes, summaries) must produce identical inferential conclusions.

### 2. Execution & Pre-Rendering Protocol
Every notebook in both `r/` and `python/` must have its outputs and charts pre-rendered:
- Whenever modifying a Python notebook, execute it using:
  ```powershell
  & "C:\Users\tarob\.jupyter_env\Scripts\jupyter-nbconvert.exe" --to notebook --execute --inplace "python/<notebook_name>.ipynb"
  ```
- Whenever modifying an R notebook, execute it using:
  ```powershell
  & "C:\Users\tarob\.jupyter_env\Scripts\jupyter-nbconvert.exe" --to notebook --execute --inplace "r/<notebook_name>.ipynb"
  ```
- Ensure all execution outputs are clean, without uncaught warnings or errors.

### 3. Chart Legibility & Styling Standards
All generated figures across both tracks must be immediately readable on high-resolution screens:
- **Python**: Use `dpi=120` (or higher), explicit `figsize` (e.g. `(9, 5.5)` for single panels, `(14, 5.5)` for multi-panels), `fontsize >= 11` for axes and labels, distinct color palettes, and clear legends.
- **R**: Use `cex.lab=1.2`, `cex.main=1.3`, `lwd=2.5+`, and appropriate figure dimensions.

### 4. Git & GitHub Synchronization Protocol
- **Remote**: `https://github.com/tarobins/bayesian-inference-intro.git` (`origin main`).
- **Git Binary**: `C:\Users\tarob\AppData\Local\Programs\git\cmd\git.exe`.
- Whenever work is completed on a notebook or feature:
  1. Verify working tree status: `git status`
  2. Stage all updated tracks: `git add r/ python/ README.md GEMINI.md AGENTS.md`
  3. Commit with a concise descriptive message.
  4. Push to remote: `git push origin main`

---

## 🛠️ Environment Configuration
- **Jupyter Root**: `C:\Users\tarob\scratch\jupyter_notebooks`
- **Python Environment**: `C:\Users\tarob\.jupyter_env\Scripts\python.exe`
- **R Environment**: R 4.6.1 with `IRkernel`
