# Antigravity / Jetski Agent Rules: Bayesian Inference: A Practical Introduction

This repository maintains **Bayesian Inference: A Practical Introduction** in two parallel tracks with exact mathematical, structural, and narrative parity:
- **`python/`** (Authoritative): Python implementation (Jupyter `python3` kernel, `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, `pandas`, `seaborn`).
- **`r/`** (Mirror): R implementation (Jupyter `ir` kernel, Base R, `optim`, `rethinking`, `coda`, `loo`, `MASS`).

---

## 🚨 Core Directives for Jetski / Antigravity

### 1. Authoritative Hierarchy & Dual-Track Parity
- **Python is the Authoritative Source of Truth**: All mathematical problem formulations, synthetic ground-truth datasets, coordinate bounds, seed sequences, and pedagogical narratives originate in Python.
- **Never update only one language track in isolation**: Any change made to Python MUST immediately be ported to R (and vice-versa).
- Maintain 1:1 parity in:
  - **Cell Count & Types**: Every sheet in `python/` and `r/` must match cell-by-cell in order and type (markdown vs. code).
  - **Narrative & Explanations**: All markdown walkthroughs, Deep Dives, Visual Decoding sections, intuition, and summary tables must be present in both versions.
  - **Mathematical Equations**: LaTeX formulations and notation must match.
  - **Interactive Exercises**: Every sheet ends with a 3-tier exercise system:
    - *Tier 1*: Conceptual Verification
    - *Tier 2*: Guided Calculation
    - *Tier 3*: Production Challenge
    All with hidden solutions (`<details><summary><b> Click here to view the solution...</b></summary>`).
  - **Code Semantics**: The statistical logic must produce identical inferential conclusions using idiomatic language libraries:
    - Optimization: `scipy.optimize.minimize` <--> Base R `optim()` / `rethinking::quap()`
    - Multivariate draws: `np.random.multivariate_normal` <--> `MASS::mvrnorm()`
    - Diagnostics: NumPy multi-chain array statistics <--> Base R + `coda`
    - Production MCMC: PyMC / Stan syntax <--> `rethinking::ulam()` / `brms`

### 2. Execution & Pre-Rendering Protocol
Every notebook in both `r/` and `python/` must have its outputs and charts pre-rendered:
- **On Windows**:
  ```powershell
  & "C:\Users\tarob\.jupyter_env\Scripts\jupyter-nbconvert.exe" --to notebook --execute --inplace "python/<notebook_name>.ipynb"
  & "C:\Users\tarob\.jupyter_env\Scripts\jupyter-nbconvert.exe" --to notebook --execute --inplace "r/<notebook_name>.ipynb"
  ```
- **On Linux / Raspberry Pi**:
  ```bash
  .venv/bin/jupyter nbconvert --to notebook --execute --inplace "python/<notebook_name>.ipynb"
  ```
- Ensure all execution outputs are clean, without uncaught warnings or errors.

### 3. Chart Legibility & Styling Standards
All generated figures across both tracks must be immediately readable on high-resolution screens:
- **Python**: Use `dpi=120` (or higher), explicit `figsize` (e.g. `(9, 5.5)` for single panels, `(14, 5.5)` for multi-panels), `fontsize >= 11` for axes and labels, distinct color palettes, and clear legends positioned outside the data curve area.
- **R**: Use `cex.lab=1.2`, `cex.main=1.3`, `lwd=2.5+`, and appropriate figure dimensions.

### 4. Git & GitHub Synchronization Protocol
- **Remote**: `https://github.com/tarobins/bayesian-inference-intro.git` (`origin main`).
- Whenever work is completed on a notebook or feature:
  1. Verify working tree status: `git status`
  2. Stage all updated tracks: `git add r/ python/ README.md GEMINI.md AGENTS.md requirements.txt install_packages.R`
  3. Commit with a concise descriptive message.
  4. Push to remote: `git push origin main`

---

## 🛠️ Environment Configuration

### Local Windows Workstation
- **Jupyter Root**: `C:\Users\tarob\scratch\jupyter_notebooks`
- **Python Virtualenv**: `C:\Users\tarob\.jupyter_env\Scripts\python.exe`
- **R Environment**: R 4.6.1 with `IRkernel` (`C:\Users\tarob\R-4.6.1\app\bin`)

### Raspberry Pi 5 Host (`raspberrypi` / `192.168.68.91`)
- **Repo Location**: `/home/tarobins/bayesian_inference_intro`
- **Python Virtualenv**: `/home/tarobins/bayesian_inference_intro/.venv`
- **CLI Binary**: `/home/tarobins/.local/bin/agy` (v1.1.27)
