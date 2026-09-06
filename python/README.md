# The Complete Bayesian Modeling Masterclass in Python
### *From Classical Frequentist Estimation to Production MCMC & Dynamic Bayesian Reliability*

This repository contains a comprehensive 6-part hands-on curriculum for parameter estimation, convergence diagnosis, and posterior prediction using **Python** (`numpy`, `scipy`, `matplotlib`, `pandas`, `seaborn`).

---

## 📚 Curriculum Structure

| Notebook | Title | Core Concept | Primary Tools |
| :--- | :--- | :--- | :--- |
| **[00_START_HERE.ipynb](00_START_HERE.ipynb)** | **Course Syllabus & Overview** | Course roadmap, comparison matrices, and quick-start links | Jupyter |
| **[01_frequentist_vs_grid_approximation.ipynb](01_frequentist_vs_grid_approximation.ipynb)** | **Foundations: Frequentist vs. Grid Approx** | Generative models, CI vs. Credible Intervals, 7 Deep Dives, Prior sensitivity & shrinkage | `scipy.stats`, `np.meshgrid`, `stats.norm` |
| **[02_quadratic_laplace_approximation.ipynb](02_quadratic_laplace_approximation.ipynb)** | **Rapid Prototyping: Quadratic (Laplace) Approx** | Parabolic log-posteriors, inverting the Hessian matrix, Multivariate Normal draws | `scipy.optimize.minimize(method='BFGS')`, `np.random.multivariate_normal` |
| **[03_mcmc_mechanics_from_scratch.ipynb](03_mcmc_mechanics_from_scratch.ipynb)** | **First Principles: MCMC Mechanics from Scratch** | Detailed balance, 3-step Metropolis rule, step-size tuning failure modes, autocorrelation decay | Pure NumPy / SciPy (`np.random.uniform`, `np.random.normal`, ACF) |
| **[04_mcmc_production_diagnostics.ipynb](04_mcmc_production_diagnostics.ipynb)** | **Production Scale: Multi-Chain MCMC & Diagnostics** | Multi-chain convergence, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), HMC physics, WAIC & LOO model comparison | Multi-chain array runner, Gelman-Rubin $\hat{R}$, $ESS$, WAIC |
| **[05_bonus_real_world_bayesian_flakiness.ipynb](05_bonus_real_world_bayesian_flakiness.ipynb)** | **Bonus: Real-World CI Test Flakiness** | Beta-Binomial conjugacy, online real-time updating in CI pipelines, automated quarantine rules, exponential memory decay | `scipy.stats.beta` (pdf, cdf, ppf, rvs) |
| **[06_calibrating_bayesian_decay_and_memory.ipynb
- [Sheet 7: Bayesian Decision Theory & Predictive Checks](07_bayesian_decision_theory_and_predictive_checks.ipynb)](06_calibrating_bayesian_decay_and_memory.ipynb
- [Sheet 7: Bayesian Decision Theory & Predictive Checks](07_bayesian_decision_theory_and_predictive_checks.ipynb))** | **Sheet 6: Calibrating Memory Decay ($\gamma$)** | Half-life derivation, steady-state $N_{\text{eff}}$, SLA de-quarantine recovery, pre-quential backtesting | `scipy.stats.betabinom`, dynamic discount filters |

---

## 🛠️ Environment Prerequisites

- **Python version**: 3.12+
- **Python Packages**: `numpy`, `scipy`, `matplotlib`, `pandas`, `seaborn`
- **Jupyter**: Jupyter Notebook / JupyterLab with `python3` kernel support
