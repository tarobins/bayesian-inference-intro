# Bayesian Inference: A Practical Introduction
### *From Exact Conjugate Foundations to Production MCMC, Dynamic Reliability & Decision Theory*

Welcome to **Bayesian Inference: A Practical Introduction**! This repository contains a complete, production-grade hands-on curriculum structured in an intuitive, progressive learning sequence:
from exact analytical foundations (Beta-Binomial conjugacy) $\to$ numerical approximation (Grid & Laplace) $\to$ production MCMC algorithms $\to$ dynamic filtering and risk-minimizing Bayesian decision theory.

---

## 💡 The Unified 3-Layer Pedagogical Architecture

To provide maximum pedagogical clarity without compromising mathematical or algorithmic rigor, every topic is delivered through an integrated **3-layer structure**:

1. **🧠 Collapsible Deep Intuitions (`<details>`)**: Physical mental models, everyday analogies, and failure modes (The Balance Scale of Pebbles, The Gaussian Tug-of-War, The 100 Parallel Universes, The Pizza Slice Denominator, The Mountain in the Fog, The Frictionless Skate Park, The 30-Day Cliff vs. Fading Ink, The Drowned Statistician, and The Smoke Alarm Matrix). Learners wanting pure intuition can expand these on demand.
2. **📐 First-Principles Mathematics**: Uncollapsed, step-by-step rigorous derivations (Euler integrals, De Finetti exchangeability, Taylor expansions of log-posteriors, Hessian curvature inversion $\Sigma = H^{-1}$, detailed balance proofs, and Wald decision criteria) that flow naturally from the section introductions.
3. **💻 Production-Grade Executable Code**: Clean, vectorized implementations from scratch and with battle-tested libraries (`scipy.optimize`, `scipy.stats`, `ulam`/Stan), accompanied by production diagnostics and interactive decision dashboards.

The curriculum is implemented in two parallel computational tracks:
- 🐍 **[Python Track (`python/`)](python/README.md)**: Built with `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, and `pandas`.
- 🔵 **[R Track (`r/`)](r/README.md)**: Built with Base R, `optim`, `rethinking` (Stan HMC engine), `coda`, and `loo`.

---

## 📚 Complete 8-Part Learning Progression

| Sheet | Topic | Core Questions & Key Concepts | Python Tools (`python/`) | R Tools (`r/`) |
| :--- | :--- | :--- | :--- | :--- |
| **[Sheet 1](python/01_foundations_and_conjugate_updating.ipynb)** | **Foundations: Beta Distribution & Conjugacy** | Euler integral, De Finetti theorem, Dutch books, Laplace Rule of Succession, online CI updating | [`scipy.stats.beta`](python/01_foundations_and_conjugate_updating.ipynb) (`pdf`, `cdf`, `ppf`, `sf`) | `dbeta()`, `pbeta()`, `qbeta()` |
| **[Sheet 1b](python/01b_normal_conjugate_updating.ipynb)** | **Continuous Conjugacy: Normal Models & Weighting** | Inverse-variance weighting, completing the square proof, Gaussian tug-of-war, sensor fusion | [`scipy.stats.norm`](python/01b_normal_conjugate_updating.ipynb) (`pdf`, weighted mean/var) | `dnorm()`, analytical updates |
| **[Sheet 2](python/02_frequentist_vs_grid_approximation.ipynb)** | **Beyond Conjugacy: Frequentist vs. Grid Approx** | Generative models, CI vs. Credible Intervals, 7 Deep Dives, Prior sensitivity & shrinkage | [`scipy.stats.ttest_1samp`](python/02_frequentist_vs_grid_approximation.ipynb), `np.meshgrid`, `stats.norm` | `t.test()`, `expand.grid()`, `dnorm()` |
| **[Sheet 3](python/03_quadratic_laplace_approximation.ipynb)** | **Rapid Prototyping: Quadratic (Laplace) Approx** | Parabolic log-posteriors, inverting the Hessian matrix, Multivariate Normal draws | [`scipy.optimize.minimize`](python/03_quadratic_laplace_approximation.ipynb), `np.random.multivariate_normal` | `optim(..., hessian=TRUE)`, `rethinking::quap()` |
| **[Sheet 3b](python/03b_markov_chains_and_detailed_balance.ipynb)** | **Equilibrium Foundations: Markov Chains & Detailed Balance** | The Markov property, transition matrix $P$, stationary distribution $\pi P = \pi$, probability flows, detailed balance proof, discrete Metropolis | Matrix powers, `np.linalg.eig`, discrete Metropolis | Matrix powers, `eigen()`, `solve()` |
| **[Sheet 4](python/04_mcmc_mechanics_from_scratch.ipynb)** | **MCMC Mechanics: Metropolis-Hastings from Scratch** | Acceptance ratio $r$, log-posterior target, step-size tuning ($\tau$), autocorrelation decay, ESS | Vectorized MCMC loops, `scipy.signal.correlate` | MCMC loops, `acf()` |
| **[Sheet 5](python/05_mcmc_production_diagnostics.ipynb)** | **Production MCMC: Multi-Chain Diagnostics & HMC** | Multi-chain sampling, Gelman-Rubin $\hat{R}$, ESS, HMC physics, divergences, WAIC & PSIS-LOO | Multi-chain sampler, `az.plot_trace` / custom plots | `rethinking::ulam()`, `coda::gelman.diag()` |
| **[Sheet 6](python/06_calibrating_bayesian_decay_and_memory.ipynb)** | **Dynamic Filtering: Calibrating Memory Decay ($\gamma$)** | Asymptotic blindness, exponential memory decay, half-life rule ($t_{1/2}$), $N_{\text{eff}}$, pre-quential backtesting | Exponential weighting loops, scoring rules | Dynamic update loops, calibration plots |
| **[Sheet 7](python/07_bayesian_decision_theory_and_predictive_checks.ipynb)** | **Actionable Systems: Decision Theory & Validation** | Expected loss minimization, $L_2/L_1/0-1$ loss, asymmetric cost matrices, Prior & Posterior Predictive Checks | Numerical expected loss, PPC simulation | Expected loss optimization, PPC simulations |

---

## 📑 Special Topic Appendices

| Appendix | Notebook | Core Focus & Techniques |
| :--- | :--- | :--- |
| **Appendix A** | **[appendix_understanding_the_hessian_matrix.ipynb](python/appendix_understanding_the_hessian_matrix.ipynb)** | Visual primer on Hessian & Jacobian matrices, 3D bowl/dome/saddle geometry, Newton optimization, and Laplace precision duality ($\Sigma = H^{-1}$) |
| **Appendix B** | **[appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb](python/appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb)** | Frequentist vs. Bayesian predictive guarantees: Flaw of Averages, Student's $t$ Prediction Bounds, ISO Tolerance Limits, and Asymmetric Loss |
| **Appendix C** | **[appendix_frequentist_vs_bayesian_flaky_tests.ipynb](python/appendix_frequentist_vs_bayesian_flaky_tests.ipynb)** | Verifying flaky test fixes: why 0/100 passes proves nothing, Fisher's Exact Test, Rule of Three, Wald's SPRT, Beta-Binomial Bayes Factors, and CI loss |
| **Appendix D** | **[appendix_test_promotion_heuristics_vs_bayes.ipynb](python/appendix_test_promotion_heuristics_vs_bayes.ipynb)** | CI/CD test promotion: $(N, M)$ passing streaks vs. Bayesian dynamic discount filtering and asymmetric loss |

---

## 🧭 Computational Strategy Decision Matrix

| Method | When to Choose | Scale Limits ($D$ Parameters) | Speed / Complexity | Primary Trade-Off / Failure Mode |
| :--- | :--- | :--- | :--- | :--- |
| **Exact Conjugacy** (Sheets 1, 1b) | Standard data likelihoods matching known prior families | $D = 1 \dots 2$ | **Instantaneous** ($\mathcal{O}(1)$ closed form) | Rigid modeling assumptions; cannot handle custom multi-parameter priors |
| **Grid Approximation** (Sheet 2) | Pedagogical exploration, arbitrary priors/likelihoods | $D \le 3$ | **Exponential** ($\mathcal{O}(G^D)$) | **Curse of Dimensionality**: completely uncomputable for $D > 3$ |
| **Quadratic / Laplace** (Sheet 3) | Fast prototyping, symmetric unimodal posteriors | $D \le 100$ | **Near-Instantaneous** ($\mathcal{O}(D^3)$ Hessian) | Blind to multimodality, asymmetric tails, and bounded parameter boundaries |
| **Markov Chain Monte Carlo** (Sheets 4, 5) | Complex real-world models, non-linear hierarchical systems | $D = 10 \dots 10^5$ | **Moderate to Heavy** (Iterative simulation) | Requires convergence diagnostics ($\hat{R} < 1.01$, $ESS$, zero divergences) |
| **Dynamic Discount Filter** (Sheet 6) | Streaming, time-varying non-stationary data | $D = 1 \dots 3$ | **Exact recursive discount** ($\mathcal{O}(1)$ streaming) | Memory decay parameter $\gamma$ must be calibrated |
| **Decision Theory & PPC** (Sheet 7) | Translating posteriors to production decisions & sanity checking | Universal ($D \ge 1$) | Exact expected loss minimization & generative sampling | Requires defining real-world cost/loss matrix |

---

## 📖 Mathematical Notation & Function Rosetta Stone

| Concept | Mathematical Symbol | Python Implementation | R Implementation | Operational Meaning |
| :--- | :--- | :--- | :--- | :--- |
| **Prior Probability** | $p(\theta)$ | `scipy.stats.beta(a, b).pdf` | `dbeta(x, a, b)`, `dnorm` | Belief state before observing evidence |
| **Data Likelihood** | $\mathcal{L}(\theta \mid D) = p(D \mid \theta)$ | `scipy.stats.binom.pmf(k, n, p)` | `dbinom(k, n, p)`, `dnorm` | Probability of observed data given $\theta$ |
| **Posterior Distribution** | $p(\theta \mid D)$ | Normalized array / MCMC draws | Normalized vector / MCMC draws | Updated belief state incorporating data |
| **Credible Interval** | $[\theta_{\alpha/2}, \theta_{1-\alpha/2}]$ | `scipy.stats.beta.ppf([0.05, 0.95], a, b)` | `qbeta(c(0.05, 0.95), a, b)` | Interval containing parameter with probability $1-\alpha$ |
| **Tail Risk / Exceedance** | $P(\theta > \theta_{\text{crit}} \mid D)$ | `scipy.stats.beta.sf(crit, a, b)` | `1 - pbeta(crit, a, b)` | Probability that parameter breaches critical limit |
| **Gelman-Rubin Metric** | $\hat{R}$ | Between-chain / within-chain variance ratio | `coda::gelman.diag()` | MCMC convergence diagnosis (Target $\hat{R} < 1.01$) |
| **Effective Sample Size** | $ESS$ | `N / (1 + 2 * sum(acf))` | `coda::effectiveSize()` | Number of independent MCMC pseudo-draws |
| **Posterior Expected Loss** | $\mathbb{E}[L(a, \theta) \mid D]$ | `np.mean(loss_fn(a, draws))` | `mean(sapply(draws, L))` | Expected real-world penalty of action $a$ |
| **Posterior Predictive $p$-value** | $\text{ppp} = P(T(y^{\text{rep}}) \ge T(y^{\text{obs}}))$ | `np.mean(t_rep >= t_obs)` | `mean(t_rep >= t_obs)` | Generative model calibration check |

---

## 🧭 Repository Layout

```text
bayesian-inference-intro/
├── README.md                                  <-- Master course syllabus & setup guide (You are here)
├── requirements.txt                           <-- Python dependencies & Jupyter packages
├── install_packages.R                         <-- R package installation & IRkernel registration script
├── python/                                    <-- Python Track (Python 3 kernel)
│   ├── README.md                              <-- Python track setup & guide
│   ├── 00_START_HERE.ipynb                    <-- Python Course syllabus & Decision Guide
│   ├── 01_foundations_and_conjugate_updating.ipynb
│   ├── 01b_normal_conjugate_updating.ipynb
│   ├── 02_frequentist_vs_grid_approximation.ipynb
│   ├── 03_quadratic_laplace_approximation.ipynb
│   ├── 03b_markov_chains_and_detailed_balance.ipynb
│   ├── 04_mcmc_mechanics_from_scratch.ipynb
│   ├── 05_mcmc_production_diagnostics.ipynb
│   ├── 06_calibrating_bayesian_decay_and_memory.ipynb
│   ├── 07_bayesian_decision_theory_and_predictive_checks.ipynb
│   ├── appendix_understanding_the_hessian_matrix.ipynb
│   ├── appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb
│   ├── appendix_frequentist_vs_bayesian_flaky_tests.ipynb
│   └── appendix_test_promotion_heuristics_vs_bayes.ipynb
└── r/                                         <-- R Track (IRkernel)
    ├── README.md                              <-- R track setup & guide
    ├── 00_START_HERE.ipynb                    <-- R Course syllabus & Decision Guide
    ├── 01_foundations_and_conjugate_updating.ipynb
    ├── 01b_normal_conjugate_updating.ipynb
    ├── 02_frequentist_vs_grid_approximation.ipynb
    ├── 03_quadratic_laplace_approximation.ipynb
    ├── 03b_markov_chains_and_detailed_balance.ipynb
    ├── 04_mcmc_mechanics_from_scratch.ipynb
    ├── 05_mcmc_production_diagnostics.ipynb
    ├── 06_calibrating_bayesian_decay_and_memory.ipynb
    └── 07_bayesian_decision_theory_and_predictive_checks.ipynb
```

---

## 🛠️ Step-by-Step Environment Setup

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
