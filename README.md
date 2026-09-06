# The Complete Bayesian Modeling Masterclass
### *From Classical Frequentist Estimation to Production MCMC & Dynamic Bayesian Reliability*

Welcome to the **Bayesian Modeling Masterclass**! This repository contains a complete, dual-track hands-on curriculum for parameter estimation, convergence diagnosis, and posterior prediction.

The masterclass is implemented in two parallel tracks with exact mathematical parity:
- 🔵 **[R Track (`r/`)](r/README.md)**: Built with Base R, `optim`, `rethinking` (Stan HMC engine), `coda`, and `loo`.
- 🐍 **[Python Track (`python/`)](python/README.md)**: Built with `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, and `pandas`.

---

## 📚 Curriculum Structure

| Sheet | Topic | Core Questions & Key Concepts | R Tools (`r/`) | Python Tools (`python/`) |
| :--- | :--- | :--- | :--- | :--- |
| **[Sheet 1](r/01_frequentist_vs_grid_approximation.ipynb)** | **Foundations: Frequentist vs. Grid Approx** | Generative models, CI vs. Credible Intervals, 7 Deep Dives, Prior sensitivity & shrinkage | `t.test()`, `expand.grid()`, `dnorm()` | [`scipy.stats.ttest_1samp`](python/01_frequentist_vs_grid_approximation.ipynb), `np.meshgrid`, `stats.norm` |
| **[Sheet 2](r/02_quadratic_laplace_approximation.ipynb)** | **Rapid Prototyping: Quadratic (Laplace) Approx** | Parabolic log-posteriors, inverting the Hessian matrix, Multivariate Normal draws | `optim(..., hessian=TRUE)`, `rethinking::quap()` | [`scipy.optimize.minimize`](python/02_quadratic_laplace_approximation.ipynb), `np.random.multivariate_normal` |
| **[Sheet 3](r/03_mcmc_mechanics_from_scratch.ipynb)** | **First Principles: MCMC Mechanics from Scratch** | Detailed balance, 3-step Metropolis rule, step-size tuning failure modes, autocorrelation decay | Pure Base R (`rnorm()`, `runif()`, `acf()`) | [Pure NumPy / SciPy](python/03_mcmc_mechanics_from_scratch.ipynb) (`np.random.normal`, ACF, ESS) |
| **[Sheet 4](r/04_mcmc_production_diagnostics.ipynb)** | **Production Scale: Multi-Chain MCMC & Diagnostics** | Multi-chain convergence, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), HMC physics, PSIS-LOO model comparison | `coda`, `rethinking::ulam()`, `loo` | [Multi-chain runner](python/04_mcmc_production_diagnostics.ipynb), Gelman-Rubin $\hat{R}$, WAIC, PSIS-LOO |
| **[Sheet 5](r/05_bonus_real_world_bayesian_flakiness.ipynb)** | **Foundations & Reliability: Beta Distribution & Conjugacy** | Euler integral, De Finetti theorem, Dutch books, Laplace Rule of Succession, Monte Carlo calibration, online CI updating | `dbeta()`, `pbeta()`, `qbeta()` | [`scipy.stats.beta`](python/05_bonus_real_world_bayesian_flakiness.ipynb) (`pdf`, `cdf`, `ppf`, `sf`) |
| **[Sheet 6](r/06_calibrating_bayesian_decay_and_memory.ipynb)** | **Dynamic Filtering: Calibrating Memory Decay ($\gamma$)** | Cauchy $O(1)$ streaming, Poisson hazard rate, West-Harrison state space, rolling window cliff-edge comparison, half-life, pre-quential backtesting | `qbeta()`, `log_beta_binom()` | [`scipy.special`](python/06_calibrating_bayesian_decay_and_memory.ipynb), dynamic discount filters |

---

## 🧭 Repository Layout

```
bayesian_inference_masterclass/
├── README.md                                  <-- Master course syllabus & overview (You are here)
├── r/                                         <-- R Track (IRkernel)
│   ├── README.md                              <-- R track setup & guide
│   ├── 00_START_HERE.ipynb                    <-- R Course syllabus
│   ├── 01_frequentist_vs_grid_approximation.ipynb
│   ├── 02_quadratic_laplace_approximation.ipynb
│   ├── 03_mcmc_mechanics_from_scratch.ipynb
│   ├── 04_mcmc_production_diagnostics.ipynb
│   ├── 05_bonus_real_world_bayesian_flakiness.ipynb
│   └── 06_calibrating_bayesian_decay_and_memory.ipynb
└── python/                                    <-- Python Track (Python 3 kernel)
    ├── README.md                              <-- Python track setup & guide
    ├── 00_START_HERE.ipynb                    <-- Python Course syllabus
    ├── 01_frequentist_vs_grid_approximation.ipynb
    ├── 02_quadratic_laplace_approximation.ipynb
    ├── 03_mcmc_mechanics_from_scratch.ipynb
    ├── 04_mcmc_production_diagnostics.ipynb
    ├── 05_bonus_real_world_bayesian_flakiness.ipynb
    └── 06_calibrating_bayesian_decay_and_memory.ipynb
```

---

## 🛠️ Environment Prerequisites & Setup

### R Track Prerequisites
- **R Version**: 4.6.1+
- **Packages**: `IRkernel`, `rethinking`, `coda`, `loo`, `MASS`
- **Jupyter Kernel**: `R` (`ir`)

### Python Track Prerequisites
- **Python Version**: 3.12+
- **Packages**: `numpy`, `scipy`, `matplotlib`, `pandas`, `seaborn`
- **Jupyter Kernel**: `Python 3 (ipykernel)`

---

## 🚀 Running the Notebooks

Launch Jupyter from the parent directory:
```bash
jupyter notebook --notebook-dir="C:\Users\tarob\scratch\jupyter_notebooks"
```

1. Navigate to **`bayesian_inference_masterclass/`**.
2. Choose **`r/00_START_HERE.ipynb`** for the R experience, or **`python/00_START_HERE.ipynb`** for the Python experience.
