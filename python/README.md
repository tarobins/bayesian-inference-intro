# Bayesian Inference: A Practical Introduction — Python Track 🐍

Welcome to the **Python Track** of the Bayesian Inference curriculum! This track provides complete implementations of all foundational principles, numerical algorithms, diagnostics, dynamic filtering, and decision theory using **NumPy**, **SciPy**, **Matplotlib**, and **Pandas**.

---

## 📚 Course Syllabus & Learning Progression

| Sheet | Notebook | Core Focus & Techniques |
| :--- | :--- | :--- |
| **00** | **[00_START_HERE.ipynb](00_START_HERE.ipynb)** | Syllabus, environment verification, Decision Guide & Rosetta Stone |
| **01** | **[01_foundations_and_conjugate_updating.ipynb](01_foundations_and_conjugate_updating.ipynb)** | Exact Beta-Binomial conjugacy, Euler integral, Dutch books, Laplace Rule of Succession, online CI tracking |
| **02** | **[02_frequentist_vs_grid_approximation.ipynb](02_frequentist_vs_grid_approximation.ipynb)** | Frequentist $t$-test vs. 2D Grid Approximation, prior shrinkage & sensitivity |
| **03** | **[03_quadratic_laplace_approximation.ipynb](03_quadratic_laplace_approximation.ipynb)** | Fast prototyping with `scipy.optimize.minimize`, inverting Hessian matrix, multivariate normal draws |
| **04** | **[04_mcmc_mechanics_from_scratch.ipynb](04_mcmc_mechanics_from_scratch.ipynb)** | Metropolis-Hastings from first principles, detailed balance, proposal step-size tuning |
| **05** | **[05_mcmc_production_diagnostics.ipynb](05_mcmc_production_diagnostics.ipynb)** | Multi-chain sampling, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), WAIC, and PSIS-LOO |
| **06** | **[06_calibrating_bayesian_decay_and_memory.ipynb](06_calibrating_bayesian_decay_and_memory.ipynb)** | Dynamic non-stationary state filtering, exponential memory decay ($\gamma$), pre-quential backtesting |
| **07** | **[07_bayesian_decision_theory_and_predictive_checks.ipynb](07_bayesian_decision_theory_and_predictive_checks.ipynb)** | Actionable systems, $L_2$ vs $L_1$ vs $L_0$ loss, asymmetric business loss cutoffs, Prior & Posterior Predictive Checks |

---

## 🛠️ Quickstart: Environment Setup

From the repository root (`bayesian-inference-intro/`):

1. **Create and activate a virtual environment**:
   ```bash
   python -m venv .venv
   # macOS / Linux:
   source .venv/bin/activate
   # Windows (PowerShell):
   .venv\Scripts\Activate.ps1
   ```

2. **Install dependencies**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

3. **Register kernel**:
   ```bash
   python -m ipykernel install --user --name bayesian-intro --display-name "Python 3 (Bayesian Intro)"
   ```

4. **Launch Jupyter**:
   ```bash
   jupyter lab
   ```
   Open `00_START_HERE.ipynb` to verify your environment!
