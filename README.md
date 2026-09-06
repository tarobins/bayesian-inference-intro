# The Complete Bayesian Modeling Masterclass
### *From Classical Frequentist Estimation to Production MCMC, Dynamic Reliability & Decision Theory*

Welcome to the **Bayesian Modeling Masterclass**! This repository contains a complete, dual-track hands-on curriculum for parameter estimation, convergence diagnosis, dynamic state filtering, and risk-minimizing Bayesian decision theory.

The masterclass is implemented in two parallel tracks with exact mathematical and structural parity:
- 🔵 **[R Track (`r/`)](r/README.md)**: Built with Base R, `optim`, `rethinking` (Stan HMC engine), `coda`, and `loo`.
- 🐍 **[Python Track (`python/`)](python/README.md)**: Built with `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, and `pandas`.

---

## 📚 Complete 7-Part Curriculum

| Sheet | Topic | Core Questions & Key Concepts | R Tools (`r/`) | Python Tools (`python/`) |
| :--- | :--- | :--- | :--- | :--- |
| **[Sheet 1](r/01_frequentist_vs_grid_approximation.ipynb)** | **Foundations: Frequentist vs. Grid Approx** | Generative models, CI vs. Credible Intervals, 7 Deep Dives, Prior sensitivity & shrinkage | `t.test()`, `expand.grid()`, `dnorm()` | [`scipy.stats.ttest_1samp`](python/01_frequentist_vs_grid_approximation.ipynb), `np.meshgrid`, `stats.norm` |
| **[Sheet 2](r/02_quadratic_laplace_approximation.ipynb)** | **Rapid Prototyping: Quadratic (Laplace) Approx** | Parabolic log-posteriors, inverting the Hessian matrix, Multivariate Normal draws | `optim(..., hessian=TRUE)`, `rethinking::quap()` | [`scipy.optimize.minimize`](python/02_quadratic_laplace_approximation.ipynb), `np.random.multivariate_normal` |
| **[Sheet 3](r/03_mcmc_mechanics_from_scratch.ipynb)** | **First Principles: MCMC Mechanics from Scratch** | Detailed balance, 3-step Metropolis rule, step-size tuning failure modes, autocorrelation decay | Pure Base R (`rnorm()`, `runif()`, `acf()`) | [Pure NumPy / SciPy](python/03_mcmc_mechanics_from_scratch.ipynb) (`np.random.normal`, ACF, ESS) |
| **[Sheet 4](r/04_mcmc_production_diagnostics.ipynb)** | **Production Scale: Multi-Chain MCMC & Diagnostics** | Multi-chain convergence, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), HMC physics, PSIS-LOO model comparison | `coda`, `rethinking::ulam()`, `loo` | [Multi-chain runner](python/04_mcmc_production_diagnostics.ipynb), Gelman-Rubin $\hat{R}$, WAIC, PSIS-LOO |
| **[Sheet 5](r/05_bonus_real_world_bayesian_flakiness.ipynb)** | **Foundations & Reliability: Beta Distribution & Conjugacy** | Euler integral, De Finetti theorem, Dutch books, Laplace Rule of Succession, Monte Carlo calibration, online CI updating | `dbeta()`, `pbeta()`, `qbeta()` | [`scipy.stats.beta`](python/05_bonus_real_world_bayesian_flakiness.ipynb) (`pdf`, `cdf`, `ppf`, `sf`) |
| **[Sheet 6](r/06_calibrating_bayesian_decay_and_memory.ipynb)** | **Dynamic Filtering: Calibrating Memory Decay ($\gamma$)** | Cauchy $O(1)$ streaming, Poisson hazard rate, West-Harrison state space, rolling window cliff-edge comparison, half-life, pre-quential backtesting | `qbeta()`, `log_beta_binom()` | [`scipy.special`](python/06_calibrating_bayesian_decay_and_memory.ipynb), dynamic discount filters |
| **[Sheet 7](r/07_bayesian_decision_theory_and_predictive_checks.ipynb)** | **Actionable Systems: Decision Theory & Predictive Checks** | Expected loss minimization, $L_2$ (Mean) vs $L_1$ (Median) vs $L_0$ (MAP) proofs, asymmetric business cost cutoffs, Prior/Posterior Predictive Checks (PPC) | `rbeta()`, `pbeta()`, simulation checks | [`scipy.stats.beta`](python/07_bayesian_decision_theory_and_predictive_checks.ipynb), loss functions, PPC |

---

## 🧭 Which Method When? Bayesian Method Decision Guide

Use this reference matrix to select the right inferential paradigm for your problem:

| Paradigm | Primary Use Case | Parameter Dimension ($D$) | Exactness & Computation | Key Limitation / Failure Mode |
| :--- | :--- | :--- | :--- | :--- |
| **Exact Conjugacy** (Sheet 5) | Binomial, Poisson, Normal with standard conjugate priors | $D = 1 \dots 2$ | **Exact closed-form** ($O(1)$ updates) | Restricted to textbook likelihood-prior pairs |
| **Dynamic Discount Filter** (Sheet 6) | Streaming, time-varying non-stationary data | $D = 1 \dots 3$ | **Exact recursive discount** ($O(1)$ streaming) | Memory decay parameter $\gamma$ must be calibrated |
| **Grid Approximation** (Sheet 1) | Custom/arbitrary priors and likelihoods | $D \le 3$ max | Exact up to grid discretization resolution | **Curse of dimensionality**: $K^D$ explodes exponentially |
| **Quadratic / Laplace (QUAP)** (Sheet 2) | Fast prototyping, unimodal posterior, large $N$ | $D \approx 1 \dots 50$ | Parabolic Gaussian Taylor expansion around mode | Inaccurate on skewed, bounded, or multimodal targets |
| **Metropolis-Hastings MCMC** (Sheet 3) | Exploring general posteriors from first principles | $D \approx 1 \dots 10$ | Asymptotically exact as $S \to \infty$ | Slow random-walk diffusion, high autocorrelation |
| **Hamiltonian Monte Carlo / NUTS** (Sheet 4) | High-dimensional models, hierarchical priors | $D \approx 10 \dots 10,000+$ | Asymptotically exact (gradient-directed physics) | Requires differentiable log-posterior, heavy compute |
| **Decision Theory & PPC** (Sheet 7) | Translating posteriors to production decisions & sanity checking | Universal ($D \ge 1$) | Exact expected loss minimization & generative sampling | Requires defining real-world cost/loss matrix |

---

## 📖 Mathematical Notation & Function Rosetta Stone

| Concept | Mathematical Symbol | R Implementation | Python Implementation | Operational Meaning |
| :--- | :--- | :--- | :--- | :--- |
| **Prior Probability** | $p(\theta)$ | `dbeta(x, a, b)`, `dnorm` | `scipy.stats.beta(a, b).pdf` | Belief state before observing evidence |
| **Data Likelihood** | $\mathcal{L}(\theta \mid D) = p(D \mid \theta)$ | `dbinom(k, n, p)`, `dnorm` | `scipy.stats.binom.pmf(k, n, p)` | Probability of observed data given $\theta$ |
| **Posterior Distribution** | $p(\theta \mid D) = \frac{p(D \mid \theta)p(\theta)}{p(D)}$ | Normalized vector / MCMC draws | Normalized array / MCMC draws | Updated belief state incorporating data |
| **Credible Interval** | $[\theta_{\alpha/2}, \theta_{1-\alpha/2}]$ | `qbeta(c(0.05, 0.95), a, b)` | `scipy.stats.beta.ppf([0.05, 0.95], a, b)` | Interval containing parameter with probability $1-\alpha$ |
| **Tail Risk / Exceedance** | $P(\theta > \theta_{\text{crit}} \mid D)$ | `1 - pbeta(crit, a, b)` | `scipy.stats.beta.sf(crit, a, b)` | Probability that parameter breaches critical limit |
| **Gelman-Rubin Metric** | $\hat{R}$ | `coda::gelman.diag()` | Between-chain / within-chain variance ratio | MCMC convergence diagnosis (Target $\hat{R} < 1.01$) |
| **Effective Sample Size** | $ESS$ | `coda::effectiveSize()` | `N / (1 + 2 * sum(acf))` | Number of independent MCMC pseudo-draws |
| **Posterior Expected Loss** | $\mathbb{E}[L(a, \theta) \mid D]$ | `mean(sapply(draws, L))` | `np.mean(loss_fn(a, draws))` | Expected real-world penalty of action $a$ |
| **Posterior Predictive $p$-value** | $\text{ppp} = P(T(y^{\text{rep}}) \ge T(y^{\text{obs}}))$ | `mean(t_rep >= t_obs)` | `np.mean(t_rep >= t_obs)` | Generative model calibration check |

---

## 🧭 Repository Layout

```
bayesian_inference_masterclass/
├── README.md                                  <-- Master course syllabus & overview (You are here)
├── r/                                         <-- R Track (IRkernel)
│   ├── README.md                              <-- R track setup & guide
│   ├── 00_START_HERE.ipynb                    <-- R Course syllabus & Decision Guide
│   ├── 01_frequentist_vs_grid_approximation.ipynb
│   ├── 02_quadratic_laplace_approximation.ipynb
│   ├── 03_mcmc_mechanics_from_scratch.ipynb
│   ├── 04_mcmc_production_diagnostics.ipynb
│   ├── 05_bonus_real_world_bayesian_flakiness.ipynb
│   ├── 06_calibrating_bayesian_decay_and_memory.ipynb
│   └── 07_bayesian_decision_theory_and_predictive_checks.ipynb
└── python/                                    <-- Python Track (Python 3 kernel)
    ├── README.md                              <-- Python track setup & guide
    ├── 00_START_HERE.ipynb                    <-- Python Course syllabus & Decision Guide
    ├── 01_frequentist_vs_grid_approximation.ipynb
    ├── 02_quadratic_laplace_approximation.ipynb
    ├── 03_mcmc_mechanics_from_scratch.ipynb
    ├── 04_mcmc_production_diagnostics.ipynb
    ├── 05_bonus_real_world_bayesian_flakiness.ipynb
    ├── 06_calibrating_bayesian_decay_and_memory.ipynb
    └── 07_bayesian_decision_theory_and_predictive_checks.ipynb
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
