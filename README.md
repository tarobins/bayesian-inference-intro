# Bayesian Inference: A Practical Introduction
### *From Exact Conjugate Foundations to Production MCMC, Dynamic Reliability & Decision Theory*

Welcome to the **Bayesian Inference: A Practical Introduction**! This repository contains a complete, dual-track hands-on curriculum structured in an intuitive, progressive learning sequence:
from exact analytical foundations (Beta-Binomial conjugacy) $\to$ numerical approximation (Grid & Laplace) $\to$ production MCMC algorithms $\to$ dynamic filtering and risk-minimizing Bayesian decision theory.

The curriculum is implemented in two parallel tracks with exact mathematical and structural parity:
- 🔵 **[R Track (`r/`)](r/README.md)**: Built with Base R, `optim`, `rethinking` (Stan HMC engine), `coda`, and `loo`.
- 🐍 **[Python Track (`python/`)](python/README.md)**: Built with `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, and `pandas`.

---

## 📚 Complete 8-Part Learning Progression

| Sheet | Topic | Core Questions & Key Concepts | R Tools (`r/`) | Python Tools (`python/`) |
| :--- | :--- | :--- | :--- | :--- |
| **[Sheet 1](r/01_foundations_and_conjugate_updating.ipynb)** | **Foundations: Beta Distribution & Conjugacy** | Euler integral, De Finetti theorem, Dutch books, Laplace Rule of Succession, online CI updating | `dbeta()`, `pbeta()`, `qbeta()` | [`scipy.stats.beta`](r/01_foundations_and_conjugate_updating.ipynb) (`pdf`, `cdf`, `ppf`, `sf`) |
| **[Sheet 1b](r/01b_normal_conjugate_updating.ipynb)** | **Continuous Conjugacy: Normal Models & Weighting** | Inverse-variance weighting, completing the square proof, Gaussian tug-of-war, sensor fusion | `dnorm()`, analytical updates | [`scipy.stats.norm`](r/01b_normal_conjugate_updating.ipynb) (`pdf`, weighted mean/var) |
| **[Sheet 2](r/02_frequentist_vs_grid_approximation.ipynb)** | **Beyond Conjugacy: Frequentist vs. Grid Approx** | Generative models, CI vs. Credible Intervals, 7 Deep Dives, Prior sensitivity & shrinkage | `t.test()`, `expand.grid()`, `dnorm()` | [`scipy.stats.ttest_1samp`](r/02_frequentist_vs_grid_approximation.ipynb), `np.meshgrid`, `stats.norm` |
| **[Sheet 3](r/03_quadratic_laplace_approximation.ipynb)** | **Rapid Prototyping: Quadratic (Laplace) Approx** | Parabolic log-posteriors, inverting the Hessian matrix, Multivariate Normal draws | `optim(..., hessian=TRUE)`, `rethinking::quap()` | [`scipy.optimize.minimize`](r/03_quadratic_laplace_approximation.ipynb), `np.random.multivariate_normal` |
| **[Sheet 4](r/04_mcmc_mechanics_from_scratch.ipynb)** | **First Principles: MCMC Mechanics from Scratch** | Detailed balance, 3-step Metropolis rule, step-size tuning failure modes, autocorrelation decay | Pure Base R (`rnorm()`, `runif()`, `acf()`) | [Pure NumPy / SciPy](r/04_mcmc_mechanics_from_scratch.ipynb) (`np.random.normal`, ACF, ESS) |
| **[Sheet 5](r/05_mcmc_production_diagnostics.ipynb)** | **Production Scale: Multi-Chain MCMC & Diagnostics** | Multi-chain convergence, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), HMC physics, PSIS-LOO model comparison | `coda`, `rethinking::ulam()`, `loo` | [Multi-chain runner](r/05_mcmc_production_diagnostics.ipynb), Gelman-Rubin $\hat{R}$, WAIC, PSIS-LOO |
| **[Sheet 6](r/06_calibrating_bayesian_decay_and_memory.ipynb)** | **Dynamic Filtering: Calibrating Memory Decay ($\gamma$)** | Cauchy $O(1)$ streaming, Poisson hazard rate, West-Harrison state space, rolling window cliff-edge comparison, half-life, pre-quential backtesting | `qbeta()`, `log_beta_binom()` | [`scipy.special`](r/06_calibrating_bayesian_decay_and_memory.ipynb), dynamic discount filters |
| **[Sheet 7](r/07_bayesian_decision_theory_and_predictive_checks.ipynb)** | **Actionable Systems: Decision Theory & Predictive Checks** | Expected loss minimization, $L_2$ (Mean) vs $L_1$ (Median) vs $L_0$ (MAP) proofs, asymmetric business cost cutoffs, Prior/Posterior Predictive Checks (PPC) | `rbeta()`, `pbeta()`, simulation checks | [`scipy.stats.beta`](r/07_bayesian_decision_theory_and_predictive_checks.ipynb), loss functions, PPC |

---

## 🧭 Which Method When? Bayesian Method Decision Guide

Use this reference matrix to select the right inferential paradigm for your problem:

| Paradigm | Primary Use Case | Parameter Dimension ($D$) | Exactness & Computation | Key Limitation / Failure Mode |
| :--- | :--- | :--- | :--- | :--- |
| **Exact Conjugacy** (Sheet 1) | Binomial, Poisson, Normal with standard conjugate priors | $D = 1 \dots 2$ | **Exact closed-form** ($O(1)$ updates) | Restricted to textbook likelihood-prior pairs |
| **Grid Approximation** (Sheet 2) | Custom/arbitrary priors and likelihoods | $D \le 3$ max | Exact up to grid discretization resolution | **Curse of dimensionality**: $K^D$ explodes exponentially |
| **Quadratic / Laplace (QUAP)** (Sheet 3) | Fast prototyping, unimodal posterior, large $N$ | $D \approx 1 \dots 50$ | Parabolic Gaussian Taylor expansion around mode | Inaccurate on skewed, bounded, or multimodal targets |
| **Metropolis-Hastings MCMC** (Sheet 4) | Exploring general posteriors from first principles | $D \approx 1 \dots 10$ | Asymptotically exact as $S \to \infty$ | Slow random-walk diffusion, high autocorrelation |
| **Hamiltonian Monte Carlo / NUTS** (Sheet 5) | High-dimensional models, hierarchical priors | $D \approx 10 \dots 10,000+$ | Asymptotically exact (gradient-directed physics) | Requires differentiable log-posterior, heavy compute |
| **Dynamic Discount Filter** (Sheet 6) | Streaming, time-varying non-stationary data | $D = 1 \dots 3$ | **Exact recursive discount** ($O(1)$ streaming) | Memory decay parameter $\gamma$ must be calibrated |
| **Decision Theory & PPC** (Sheet 7) | Translating posteriors to production decisions & sanity checking | Universal ($D \ge 1$) | Exact expected loss minimization & generative sampling | Requires defining real-world cost/loss matrix |

---

## 📖 Mathematical Notation & Function Rosetta Stone

| Concept | Mathematical Symbol | R Implementation | Python Implementation | Operational Meaning |
| :--- | :--- | :--- | :--- | :--- |
| **Prior Probability** | $p(\theta)$ | `dbeta(x, a, b)`, `dnorm` | `scipy.stats.beta(a, b).pdf` | Belief state before observing evidence |
| **Data Likelihood** | $\mathcal{L}(\theta \mid D) = p(D \mid \theta)$ | `dbinom(k, n, p)`, `dnorm` | `scipy.stats.binom.pmf(k, n, p)` | Probability of observed data given $\theta$ |
| **Posterior Distribution** | $p(\theta \mid D)$ | Normalized vector / MCMC draws | Normalized array / MCMC draws | Updated belief state incorporating data |
| **Credible Interval** | $[\theta_{\alpha/2}, \theta_{1-\alpha/2}]$ | `qbeta(c(0.05, 0.95), a, b)` | `scipy.stats.beta.ppf([0.05, 0.95], a, b)` | Interval containing parameter with probability $1-\alpha$ |
| **Tail Risk / Exceedance** | $P(\theta > \theta_{\text{crit}} \mid D)$ | `1 - pbeta(crit, a, b)` | `scipy.stats.beta.sf(crit, a, b)` | Probability that parameter breaches critical limit |
| **Gelman-Rubin Metric** | $\hat{R}$ | `coda::gelman.diag()` | Between-chain / within-chain variance ratio | MCMC convergence diagnosis (Target $\hat{R} < 1.01$) |
| **Effective Sample Size** | $ESS$ | `coda::effectiveSize()` | `N / (1 + 2 * sum(acf))` | Number of independent MCMC pseudo-draws |
| **Posterior Expected Loss** | $\mathbb{E}[L(a, \theta) \mid D]$ | `mean(sapply(draws, L))` | `np.mean(loss_fn(a, draws))` | Expected real-world penalty of action $a$ |
| **Posterior Predictive $p$-value** | $\text{ppp} = P(T(y^{\text{rep}}) \ge T(y^{\text{obs}}))$ | `mean(t_rep >= t_obs)` | `np.mean(t_rep >= t_obs)` | Generative model calibration check |

---

## 🧭 Repository Layout

```
bayesian-inference-intro/
├── README.md                                  <-- Master course syllabus & setup guide (You are here)
├── requirements.txt                           <-- Python dependencies & Jupyter packages
├── install_packages.R                         <-- R package installation & IRkernel registration script
├── r/                                         <-- R Track (IRkernel)
│   ├── README.md                              <-- R track setup & guide
│   ├── 00_START_HERE.ipynb                    <-- R Course syllabus & Decision Guide
│   ├── 01_foundations_and_conjugate_updating.ipynb
│   ├── 01b_normal_conjugate_updating.ipynb
│   ├── 02_frequentist_vs_grid_approximation.ipynb
│   ├── 03_quadratic_laplace_approximation.ipynb
│   ├── 04_mcmc_mechanics_from_scratch.ipynb
│   ├── 05_mcmc_production_diagnostics.ipynb
│   ├── 06_calibrating_bayesian_decay_and_memory.ipynb
│   └── 07_bayesian_decision_theory_and_predictive_checks.ipynb
└── python/                                    <-- Python Track (Python 3 kernel)
    ├── README.md                              <-- Python track setup & guide
    ├── 00_START_HERE.ipynb                    <-- Python Course syllabus & Decision Guide
    ├── 01_foundations_and_conjugate_updating.ipynb
    ├── 01b_normal_conjugate_updating.ipynb
    ├── 02_frequentist_vs_grid_approximation.ipynb
    ├── 03_quadratic_laplace_approximation.ipynb
    ├── 04_mcmc_mechanics_from_scratch.ipynb
    ├── 05_mcmc_production_diagnostics.ipynb
    ├── 06_calibrating_bayesian_decay_and_memory.ipynb
    └── 07_bayesian_decision_theory_and_predictive_checks.ipynb
```

---

## 🛠️ Step-by-Step Server & Library Setup

Follow these instructions to configure your environment and run the worksheets locally.

### Step 1: Clone the Repository

```bash
git clone https://github.com/tarobins/bayesian-inference-intro.git
cd bayesian-inference-intro
```

---

### Step 2: Python Track Setup 🐍

1. **Create and activate a virtual environment**:
   - **macOS / Linux**:
     ```bash
     python3 -m venv .venv
     source .venv/bin/activate
     ```
   - **Windows (PowerShell)**:
     ```powershell
     python -m venv .venv
     .venv\Scripts\Activate.ps1
     ```
   - **Windows (Command Prompt)**:
     ```cmd
     python -m venv .venv
     .venv\Scripts\activate.bat
     ```

2. **Install dependencies**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

3. **Register the Python kernel with Jupyter**:
   ```bash
   python -m ipykernel install --user --name bayesian-intro --display-name "Python 3 (Bayesian Intro)"
   ```

4. **Verify Python installation**:
   ```bash
   python -c "import numpy, scipy, matplotlib, pandas, seaborn; print('Python dependencies successfully verified!')"
   ```

---

### Step 3: R Track Setup 🔵

1. **Prerequisites**: Ensure [R](https://cloud.r-project.org/) (version 4.0 or higher) is installed on your system.

2. **Run the automated R package setup script**:
   ```bash
   Rscript install_packages.R
   ```
   *This installs `coda`, `loo`, `MASS`, `IRkernel`, and registers the R kernel with your local Jupyter installation.*

3. **Verify R installation & kernel**:
   ```bash
   Rscript -e "coda::gelman.diag; cat('R dependencies verified!\n')"
   ```

---

### Step 4: Launching the Jupyter Server 🚀

From inside the `bayesian-inference-intro` directory with your virtual environment active:

```bash
jupyter lab
```
*(Or launch the classic notebook interface with `jupyter notebook`)*

Once the browser opens:
- For Python: navigate to `python/` and open `00_START_HERE.ipynb` (Kernel: **`Python 3 (Bayesian Intro)`**).
- For R: navigate to `r/` and open `00_START_HERE.ipynb` (Kernel: **`R`**).

---

### Alternative: Running in VS Code or Positron 💻

If you prefer an IDE:
1. Open the cloned folder in **VS Code**: `code .`
2. Install the **Python** and **Jupyter** extensions (and optionally the **R** extension).
3. Open any `.ipynb` file in `python/` or `r/`.
4. Click the kernel picker in the top-right corner:
   - For Python: select `.venv (Python 3.x)`.
   - For R: select `R (ir)`.
