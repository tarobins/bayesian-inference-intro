# Bayesian Inference Masterclass: R Track 🔵

Welcome to the **R Track** of the Bayesian Inference Masterclass! This track provides complete implementations of all foundational principles, numerical algorithms, diagnostics, dynamic filtering, and decision theory using **Base R**, `optim`, `rethinking` (Stan HMC), `coda`, and `loo`.

---

## 📚 Course Syllabus & Learning Progression

| Sheet | Notebook | Core Focus & Techniques |
| :--- | :--- | :--- |
| **00** | **[00_START_HERE.ipynb](00_START_HERE.ipynb)** | Syllabus, environment verification, Decision Guide & Rosetta Stone |
| **01** | **[01_foundations_and_conjugate_updating.ipynb](01_foundations_and_conjugate_updating.ipynb)** | Exact Beta-Binomial conjugacy, Euler integral, Dutch books, Laplace Rule of Succession, online CI tracking |
| **02** | **[02_frequentist_vs_grid_approximation.ipynb](02_frequentist_vs_grid_approximation.ipynb)** | Frequentist $t$-test vs. 2D Grid Approximation, prior shrinkage & sensitivity |
| **03** | **[03_quadratic_laplace_approximation.ipynb](03_quadratic_laplace_approximation.ipynb)** | Fast prototyping with `optim(..., hessian=TRUE)`, `rethinking::quap`, multivariate normal draws |
| **04** | **[04_mcmc_mechanics_from_scratch.ipynb](04_mcmc_mechanics_from_scratch.ipynb)** | Metropolis-Hastings from first principles, detailed balance, proposal step-size tuning |
| **05** | **[05_mcmc_production_diagnostics.ipynb](05_mcmc_production_diagnostics.ipynb)** | Multi-chain sampling, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), WAIC, and PSIS-LOO |
| **06** | **[06_calibrating_bayesian_decay_and_memory.ipynb](06_calibrating_bayesian_decay_and_memory.ipynb)** | Dynamic non-stationary state filtering, exponential memory decay ($\gamma$), pre-quential backtesting |
| **07** | **[07_bayesian_decision_theory_and_predictive_checks.ipynb](07_bayesian_decision_theory_and_predictive_checks.ipynb)** | Actionable systems, $L_2$ vs $L_1$ vs $L_0$ loss, asymmetric business cost cutoffs, Prior & Posterior Predictive Checks |

---

## 🛠️ Environment Setup
- R 4.6.1+ with `IRkernel`
- Packages: `install.packages(c("rethinking", "coda", "loo", "MASS"))`
- Kernel: `R (ir)`
