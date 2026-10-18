# Bayesian Inference: A Practical Introduction
### *From Exact Conjugate Foundations to Production MCMC, Applied Modeling, Dynamic Systems & Decision Theory*

Welcome to **Bayesian Inference: A Practical Introduction**! This repository
contains a complete, production-grade hands-on curriculum structured in a
unified **5-Part, 23-Chapter (`00`–`22`) learning progression**:
1. **Part I (`00`–`04`)**: Foundations, Conjugacy & Estimating a Mean
2. **Part II (`05`–`10`)**: Numerical & Sampling Engines (Grids, Curvature & MCMC)
3. **Part III (`11`–`14`)**: Applied Modeling, Regression, Hierarchy & Model Comparison
4. **Part IV (`15`–`17`)**: Dynamic Systems, Decision Theory & Predictive Guarantees
5. **Part V (`18`–`22`)**: Production Reliability, CI/CD & Active Learning Case Studies

---

## 🚗 The "Sidecar / Companion" Hybrid Architecture

To deliver deep physical intuition, AI-era epistemic architecture, and
from-scratch mathematical rigor without compromising any dimension, the
curriculum is organized into **four parallel, 1-to-1 synchronized companion
tracks** sharing identical filenames (`00_START_HERE.ipynb` through
`22_information_theory_and_culprit_search.ipynb`):

* 📖 **[Conceptual Track (`conceptual/`)](conceptual/README.md)**: A pure
  reading edition designed for comprehension. Zero code cells, intuitive math
  derivations, and rich physical mental models (The Balance Scale of Pebbles,
  The Gaussian Tug-of-War, The 100 Parallel Universes, The Mountain in the Fog,
  The Frictionless Skate Park, Stein's Shrinkage Magnets, The Gambling Budget
  Occam's Razor, Fading Ink, The Drowned Statistician, and The 50-Sided Die).
* 🤖 **[AI-Native Track (`ai/`)](ai/README.md)**: A language-agnostic track for
  the AI era where imperative syntax is a commodity and **Epistemic
  Architecture** is the bottleneck. Teaches **Prompting as Probabilistic
  Programming**: forensic post-mortems of naive AI prompts, copy-pasteable
  declarative model specifications, 4-gate agentic verification contracts (Prior
  Predictive, Simulation-Based Calibration, Convergence, and Asymmetric Loss),
  and 3-tier "Audit the AI" exercises.
* 🐍 **[Python Track (`python/`)](python/README.md)**: A rigorous engineering
  lab manual built with `numpy`, `scipy`, `matplotlib`, `pandas`, and `sympy`.
  Features step-by-step mathematical derivations, from-scratch algorithmic
  implementations, multi-panel diagnostic visualizations, and 3-tier exercises.
* 🔵 **[R Track (`r/`)](r/README.md)**: A complete, 1-to-1 parallel lab manual
  built with Base R, `optim`, `MASS`, `coda`, and `loo`, with matching
  simulations, plots, and 3-tier exercises.
* 🔗 **Seamless Cross-Track Navigation**: Every chapter contains top and bottom
  navigation bars linking to the Previous/Next chapters and its exact
  counterparts across `conceptual/`, `ai/`, `python/`, and `r/`.

---

## 📚 Master 23-Chapter Curriculum Syllabus (`00`–`22`)

| Ch | Conceptual Track (`conceptual/`) | AI-Native Track (`ai/`) | Python Lab (`python/`) | R Lab (`r/`) | Key Concepts & Physical Mental Models |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Part I: Foundations, Conjugacy & Estimating a Mean** | | | | | |
| **00** | **[Ch 00: Course Overview, The Three Paradigms & Roadmap](conceptual/00_START_HERE.ipynb)** | **[Ch 00 (AI)](ai/00_START_HERE.ipynb)** | **[Ch 00 (Python)](python/00_START_HERE.ipynb)** | **[Ch 00 (R)](r/00_START_HERE.ipynb)** | The Three Paradigms, 100 Parallel Universes, Intractable Denominator, Course Roadmap |
| **01** | **[Ch 01: Discrete Conjugacy — Beta-Binomial Updating](conceptual/01_foundations_and_conjugate_updating.ipynb)** | **[Ch 01 (AI)](ai/01_foundations_and_conjugate_updating.ipynb)** | **[Ch 01 (Python)](python/01_foundations_and_conjugate_updating.ipynb)** | **[Ch 01 (R)](r/01_foundations_and_conjugate_updating.ipynb)** | Balance Scale of Pebbles, Euler Beta integral, Laplace's Rule of Succession, streaming CI updates |
| **02** | **[Ch 02: Continuous Conjugacy — Normal Models & Precision Tug-of-War](conceptual/02_normal_conjugate_updating.ipynb)** | **[Ch 02 (AI)](ai/02_normal_conjugate_updating.ipynb)** | **[Ch 02 (Python)](python/02_normal_conjugate_updating.ipynb)** | **[Ch 02 (R)](r/02_normal_conjugate_updating.ipynb)** | Two GPS Sensors, Precision ($\tau = 1/\sigma^2$) as stiffness, completing the square, sensor fusion |
| **03** | **[Ch 03: Calculating a Mean in a Frequentist World](conceptual/03_calculating_a_mean_frequentist.ipynb)** | **[Ch 03 (AI)](ai/03_calculating_a_mean_frequentist.ipynb)** | **[Ch 03 (Python)](python/03_calculating_a_mean_frequentist.ipynb)** | **[Ch 03 (R)](r/03_calculating_a_mean_frequentist.ipynb)** | 100 Parallel Universes, Bessel's correction ($n-1$), Standard Error ($s/\sqrt{n}$), CLT, bootstrap |
| **04** | **[Ch 04: Calculating a Mean in a Bayesian World](conceptual/04_calculating_a_mean_bayesian.ipynb)** | **[Ch 04 (AI)](ai/04_calculating_a_mean_bayesian.ipynb)** | **[Ch 04 (Python)](python/04_calculating_a_mean_bayesian.ipynb)** | **[Ch 04 (R)](r/04_calculating_a_mean_bayesian.ipynb)** | Spring-Loaded Tug-of-War, joint $(\mu, \sigma)$ inference, 95% HDI vs Equal-Tailed CI, Student-$t$ |
| **Part II: Numerical & Sampling Engines** | | | | | |
| **05** | **[Ch 05: Beyond Conjugacy — 2D Grid Approximation](conceptual/05_frequentist_vs_grid_approximation.ipynb)** | **[Ch 05 (AI)](ai/05_frequentist_vs_grid_approximation.ipynb)** | **[Ch 05 (Python)](python/05_frequentist_vs_grid_approximation.ipynb)** | **[Ch 05 (R)](r/05_frequentist_vs_grid_approximation.ipynb)** | Cookie Sheet of 1,000 Buckets, 2D posterior surfaces, prior sensitivity, Curse of Dimensionality |
| **06** | **[Ch 06: Finding the Peak — Quadratic (Laplace / QUAP) Approximation](conceptual/06_quadratic_laplace_approximation.ipynb)** | **[Ch 06 (AI)](ai/06_quadratic_laplace_approximation.ipynb)** | **[Ch 06 (Python)](python/06_quadratic_laplace_approximation.ipynb)** | **[Ch 06 (R)](r/06_quadratic_laplace_approximation.ipynb)** | Hiking in Fog, MAP optimization, 2nd-order Taylor expansion, covariance from curvature ($\Sigma = H^{-1}$) |
| **07** | **[Ch 07: Geometry of Curvature — The Hessian Matrix & Jacobian](conceptual/07_understanding_the_hessian_matrix.ipynb)** | **[Ch 07 (AI)](ai/07_understanding_the_hessian_matrix.ipynb)** | **[Ch 07 (Python)](python/07_understanding_the_hessian_matrix.ipynb)** | **[Ch 07 (R)](r/07_understanding_the_hessian_matrix.ipynb)** | Salad Bowl, Igloo Dome, Pringle Saddle Point, Jacobian of gradient, Newton's method vs Gradient Descent |
| **08** | **[Ch 08: Discrete Markov Chains, Stationary Equilibrium & Detailed Balance](conceptual/08_markov_chains_and_detailed_balance.ipynb)** | **[Ch 08 (AI)](ai/08_markov_chains_and_detailed_balance.ipynb)** | **[Ch 08 (Python)](python/08_markov_chains_and_detailed_balance.ipynb)** | **[Ch 08 (R)](r/08_markov_chains_and_detailed_balance.ipynb)** | Memoryless Island Hopping, transition matrix $P$, stationary $\pi^* P = \pi^*$, Detailed Balance ($\pi_i P_{ij} = \pi_j P_{ji}$) |
| **09** | **[Ch 09: First Principles — Metropolis-Hastings MCMC from Scratch](conceptual/09_mcmc_mechanics_from_scratch.ipynb)** | **[Ch 09 (AI)](ai/09_mcmc_mechanics_from_scratch.ipynb)** | **[Ch 09 (Python)](python/09_mcmc_mechanics_from_scratch.ipynb)** | **[Ch 09 (R)](r/09_mcmc_mechanics_from_scratch.ipynb)** | King Markov, denominator cancellation, proposal step-size tuning, traceplots, autocorrelation & ESS |
| **10** | **[Ch 10: Production Scale — HMC Physics & Multi-Chain Diagnostics](conceptual/10_mcmc_production_diagnostics.ipynb)** | **[Ch 10 (AI)](ai/10_mcmc_production_diagnostics.ipynb)** | **[Ch 10 (Python)](python/10_mcmc_production_diagnostics.ipynb)** | **[Ch 10 (R)](r/10_mcmc_production_diagnostics.ipynb)** | Frictionless Skate Park (HMC), Four Hikers ($\hat{R} < 1.01$), bulk/tail ESS, divergences, WAIC & PSIS-LOO |
| **Part III: Applied Modeling, Regression, Hierarchy & Model Comparison** | | | | | |
| **11** | **[Ch 11: Comparing Two Groups — The $t$-Test, Bayes Factors & BEST](conceptual/11_t_test_frequentist_vs_bayesian.ipynb)** | **[Ch 11 (AI)](ai/11_t_test_frequentist_vs_bayesian.ipynb)** | **[Ch 11 (Python)](python/11_t_test_frequentist_vs_bayesian.ipynb)** | **[Ch 11 (R)](r/11_t_test_frequentist_vs_bayesian.ipynb)** | 3 Fatal Fallacies of NHST, Welch's $t$-test vs JZS Bayes Factors ($BF_{10}$) vs Kruschke's BEST & ROPE |
| **12** | **[Ch 12: Bayesian Linear Regression, Poisson-Gamma Counts & GLMs](conceptual/12_bayesian_regression_and_glms.ipynb)** | **[Ch 12 (AI)](ai/12_bayesian_regression_and_glms.ipynb)** | **[Ch 12 (Python)](python/12_bayesian_regression_and_glms.ipynb)** | **[Ch 12 (R)](r/12_bayesian_regression_and_glms.ipynb)** | Moving Spotlight, Poisson-Gamma event rates, Credible Line Band vs Predictive Ribbon, Logistic GLMs |
| **13** | **[Ch 13: Hierarchical Models, Partial Pooling & Shrinkage](conceptual/13_hierarchical_models_and_partial_pooling.ipynb)** | **[Ch 13 (AI)](ai/13_hierarchical_models_and_partial_pooling.ipynb)** | **[Ch 13 (Python)](python/13_hierarchical_models_and_partial_pooling.ipynb)** | **[Ch 13 (R)](r/13_hierarchical_models_and_partial_pooling.ipynb)** | No Pooling vs Complete Pooling vs Partial Pooling, Stein's Paradox, shrinkage weight $w_j$, Funnel geometry |
| **14** | **[Ch 14: Likelihood vs. Marginal Likelihood, Occam's Razor & Model Comparison](conceptual/14_marginal_likelihood_and_model_comparison.ipynb)** | **[Ch 14 (AI)](ai/14_marginal_likelihood_and_model_comparison.ipynb)** | **[Ch 14 (Python)](python/14_marginal_likelihood_and_model_comparison.ipynb)** | **[Ch 14 (R)](r/14_marginal_likelihood_and_model_comparison.ipynb)** | Point Likelihood vs Marginal Evidence $P(\mathcal{D}\mid\mathcal{M})$, Bayesian Occam's Razor, Lindley's Paradox, LOO-CV |
| **Part IV: Dynamic Systems, Decision Theory & Predictive Guarantees** | | | | | |
| **15** | **[Ch 15: Dynamic World — Calibrating Bayesian Memory Decay ($\gamma$)](conceptual/15_calibrating_bayesian_decay_and_memory.ipynb)** | **[Ch 15 (AI)](ai/15_calibrating_bayesian_decay_and_memory.ipynb)** | **[Ch 15 (Python)](python/15_calibrating_bayesian_decay_and_memory.ipynb)** | **[Ch 15 (R)](r/15_calibrating_bayesian_decay_and_memory.ipynb)** | 30-Day Cliff vs Fading Ink, exponential discounting ($\gamma$), effective sample horizon $N_{\text{eff}}$, prequential calibration |
| **16** | **[Ch 16: Actionable Systems — Decision Theory, Loss Functions & Predictive Checks](conceptual/16_bayesian_decision_theory_and_predictive_checks.ipynb)** | **[Ch 16 (AI)](ai/16_bayesian_decision_theory_and_predictive_checks.ipynb)** | **[Ch 16 (Python)](python/16_bayesian_decision_theory_and_predictive_checks.ipynb)** | **[Ch 16 (R)](r/16_bayesian_decision_theory_and_predictive_checks.ipynb)** | Flaw of Averages (3-ft River), Smoke Alarm Matrix ($L_2, L_1, 0\text{-}1$, asymmetric loss), Sanity Mirror (Prior/Posterior PC) |
| **17** | **[Ch 17: Predictive Guarantees — Confidence, Prediction & Tolerance Intervals](conceptual/17_tolerance_intervals_and_decision_sizing.ipynb)** | **[Ch 17 (AI)](ai/17_tolerance_intervals_and_decision_sizing.ipynb)** | **[Ch 17 (Python)](python/17_tolerance_intervals_and_decision_sizing.ipynb)** | **[Ch 17 (R)](r/17_tolerance_intervals_and_decision_sizing.ipynb)** | Confidence vs Prediction vs Tolerance Intervals, Plug-In Fallacy, ISO 16269-6 non-central $t$, Two-Tier $(p, 1-\alpha)$ guarantee |
| **Part V: Production Reliability, CI/CD & Active Learning** | | | | | |
| **18** | **[Ch 18: Gateway Synthesis — Flaky Tests, Streaks & CI Pipelines](conceptual/18_case_studies_flaky_tests_and_pipelines.ipynb)** | **[Ch 18 (AI)](ai/18_case_studies_flaky_tests_and_pipelines.ipynb)** | **[Ch 18 (Python)](python/18_case_studies_flaky_tests_and_pipelines.ipynb)** | **[Ch 18 (R)](r/18_case_studies_flaky_tests_and_pipelines.ipynb)** | 50-Sided Die zero-failure trap, $(N, M)$ streak traps, End-to-End CI/CD Governance Router & Master Reference Matrix |
| **19** | **[Ch 19: Verifying Flaky Test Fixes — Wald's SPRT & Bayes Factors](conceptual/19_verifying_flaky_test_fixes.ipynb)** | **[Ch 19 (AI)](ai/19_verifying_flaky_test_fixes.ipynb)** | **[Ch 19 (Python)](python/19_verifying_flaky_test_fixes.ipynb)** | **[Ch 19 (R)](r/19_verifying_flaky_test_fixes.ipynb)** | Why $0/100$ passes proves nothing, Fisher's Exact Test, Rule of Three, Wald's SPRT, Beta-Binomial Bayes Factor ($BF=4.0$) |
| **20** | **[Ch 20: CI/CD Test Promotion — $(N, M)$ Streaks vs. Dynamic Bayesian Filtering](conceptual/20_test_promotion_heuristics_vs_bayes.ipynb)** | **[Ch 20 (AI)](ai/20_test_promotion_heuristics_vs_bayes.ipynb)** | **[Ch 20 (Python)](python/20_test_promotion_heuristics_vs_bayes.ipynb)** | **[Ch 20 (R)](r/20_test_promotion_heuristics_vs_bayes.ipynb)** | Gambler's Fallacy in CI, 4 hidden traps of $(N, M)$ streaks, survivorship bias, dynamic discount promotion state machine |
| **21** | **[Ch 21: Testing Framework Reliability & Two-Tier Tolerance Contracts](conceptual/21_framework_reliability_and_tolerance_contracts.ipynb)** | **[Ch 21 (AI)](ai/21_framework_reliability_and_tolerance_contracts.ipynb)** | **[Ch 21 (Python)](python/21_framework_reliability_and_tolerance_contracts.ipynb)** | **[Ch 21 (R)](r/21_framework_reliability_and_tolerance_contracts.ipynb)** | Serial suite compounding $R_{\text{suite}} = (1-\theta)^K$, Two-Tier Posterior Predictive guarantee, False Discovery Rate (FDR) economics |
| **22** | **[Ch 22: Active Learning & Information-Theoretic Flake Culprit Search](conceptual/22_information_theory_and_culprit_search.ipynb)** | **[Ch 22 (AI)](ai/22_information_theory_and_culprit_search.ipynb)** | **[Ch 22 (Python)](python/22_information_theory_and_culprit_search.ipynb)** | **[Ch 22 (R)](r/22_information_theory_and_culprit_search.ipynb)** | Shannon Entropy in bits, Perplexity, Beta-Bernoulli changepoint posteriors, Mutual Information $I(C; Y)$ active bisection |

---

## 🧭 Computational & Modeling Strategy Decision Matrix

| Method / Module | When to Choose | Scale Limits ($D$ Params) | Speed / Complexity | Primary Trade-Off / Failure Mode |
| :--- | :--- | :--- | :--- | :--- |
| **Exact Conjugacy** (Ch 01, 02, 12) | Standard likelihoods matching conjugate priors (Beta-Binomial, Normal-Normal, Poisson-Gamma) | $D = 1 \dots 2$ | **Instantaneous** ($\mathcal{O}(1)$ closed form) | Rigid modeling assumptions; cannot handle arbitrary non-conjugate priors |
| **Grid Approximation** (Ch 05) | Pedagogical exploration, arbitrary priors/likelihoods in low dimensions | $D \le 3$ | **Exponential** ($\mathcal{O}(G^D)$) | **Curse of Dimensionality**: uncomputable for $D > 3$ |
| **Quadratic / Laplace** (Ch 06, 07) | Fast prototyping, symmetric unimodal posteriors | $D \le 100$ | **Milliseconds** ($\mathcal{O}(D^3)$ Hessian inversion) | Gaussian blindness: misses skewness, boundaries, and multimodality |
| **Markov Chain Monte Carlo** (Ch 08–10) | General multi-parameter, hierarchical, or non-linear models | $D = 1 \dots 10^5$ | **Seconds to Minutes** (iterative simulation) | Requires convergence verification ($\hat{R} < 1.01$, $ESS > 400$, 0 divergences) |
| **Hierarchical Partial Pooling** (Ch 13) | Multi-group / cluster estimation ($J$ servers, regions, or test suites) | $D = J + 2$ | **Fast** (Empirical Bayes or HMC) | Requires non-centered parameterization when group variance $\tau_{\text{pop}}$ is small |
| **Marginal Likelihood & LOO-CV** (Ch 14) | Hypothesis testing ($BF_{12}$) vs. out-of-sample predictive selection (PSIS-LOO / WAIC) | Universal | **Analytical / Fast from MCMC draws** | Bayes Factors are sensitive to vague priors (Lindley's Paradox); LOO targets prediction |
| **Dynamic Discount Filter** (Ch 15, 20) | Streaming, non-stationary environments with concept drift | $D = 1 \dots 3$ | **Instantaneous** ($\mathcal{O}(1)$ online recursion) | Memory decay factor $\gamma$ must be calibrated via prequential backtesting |
| **Decision Theory & Tolerance** (Ch 16, 17, 21) | Translating posterior distributions into risk-optimal actions & $(p, 1-\alpha)$ guarantees | Universal | **Instantaneous** post-processing | Requires explicitly specifying real-world asymmetric loss costs |
| **Active Information Search** (Ch 19, 22) | Sequential fix verification (SPRT) and culpable commit bisection ($I(C; Y)$) | $K$ commits | **Fast** ($\mathcal{O}(K)$ per test evaluation) | Requires historical flake baseline $p_0$ to separate noise from true regressions |

---

## 🗂️ Repository Layout

```text
bayesian-inference-intro/
├── README.md                                  <-- Master course syllabus & setup guide
├── requirements.txt                           <-- Python dependencies & Jupyter packages
├── install_packages.R                         <-- R package installation & IRkernel registration script
├── conceptual/                                <-- Conceptual Track (23 chapters: 00 to 22)
│   ├── README.md
│   ├── 00_START_HERE.ipynb
│   ├── 01_foundations_and_conjugate_updating.ipynb
│   ├── 02_normal_conjugate_updating.ipynb
│   ├── 03_calculating_a_mean_frequentist.ipynb
│   ├── 04_calculating_a_mean_bayesian.ipynb
│   ├── 05_frequentist_vs_grid_approximation.ipynb
│   ├── 06_quadratic_laplace_approximation.ipynb
│   ├── 07_understanding_the_hessian_matrix.ipynb
│   ├── 08_markov_chains_and_detailed_balance.ipynb
│   ├── 09_mcmc_mechanics_from_scratch.ipynb
│   ├── 10_mcmc_production_diagnostics.ipynb
│   ├── 11_t_test_frequentist_vs_bayesian.ipynb
│   ├── 12_bayesian_regression_and_glms.ipynb
│   ├── 13_hierarchical_models_and_partial_pooling.ipynb
│   ├── 14_marginal_likelihood_and_model_comparison.ipynb
│   ├── 15_calibrating_bayesian_decay_and_memory.ipynb
│   ├── 16_bayesian_decision_theory_and_predictive_checks.ipynb
│   ├── 17_tolerance_intervals_and_decision_sizing.ipynb
│   ├── 18_case_studies_flaky_tests_and_pipelines.ipynb
│   ├── 19_verifying_flaky_test_fixes.ipynb
│   ├── 20_test_promotion_heuristics_vs_bayes.ipynb
│   ├── 21_framework_reliability_and_tolerance_contracts.ipynb
│   └── 22_information_theory_and_culprit_search.ipynb
├── ai/                                        <-- AI-Native Track (23 chapters: 00 to 22)
│   ├── README.md
│   ├── 00_START_HERE.ipynb
│   ├── 01_foundations_and_conjugate_updating.ipynb
│   ├── 02_normal_conjugate_updating.ipynb
│   ├── 03_calculating_a_mean_frequentist.ipynb
│   ├── 04_calculating_a_mean_bayesian.ipynb
│   ├── 05_frequentist_vs_grid_approximation.ipynb
│   ├── 06_quadratic_laplace_approximation.ipynb
│   ├── 07_understanding_the_hessian_matrix.ipynb
│   ├── 08_markov_chains_and_detailed_balance.ipynb
│   ├── 09_mcmc_mechanics_from_scratch.ipynb
│   ├── 10_mcmc_production_diagnostics.ipynb
│   ├── 11_t_test_frequentist_vs_bayesian.ipynb
│   ├── 12_bayesian_regression_and_glms.ipynb
│   ├── 13_hierarchical_models_and_partial_pooling.ipynb
│   ├── 14_marginal_likelihood_and_model_comparison.ipynb
│   ├── 15_calibrating_bayesian_decay_and_memory.ipynb
│   ├── 16_bayesian_decision_theory_and_predictive_checks.ipynb
│   ├── 17_tolerance_intervals_and_decision_sizing.ipynb
│   ├── 18_case_studies_flaky_tests_and_pipelines.ipynb
│   ├── 19_verifying_flaky_test_fixes.ipynb
│   ├── 20_test_promotion_heuristics_vs_bayes.ipynb
│   ├── 21_framework_reliability_and_tolerance_contracts.ipynb
│   └── 22_information_theory_and_culprit_search.ipynb
├── python/                                    <-- Python Track (23 chapters: 00 to 22)
│   ├── README.md
│   ├── 00_START_HERE.ipynb
│   ├── 01_foundations_and_conjugate_updating.ipynb
│   ├── 02_normal_conjugate_updating.ipynb
│   ├── 03_calculating_a_mean_frequentist.ipynb
│   ├── 04_calculating_a_mean_bayesian.ipynb
│   ├── 05_frequentist_vs_grid_approximation.ipynb
│   ├── 06_quadratic_laplace_approximation.ipynb
│   ├── 07_understanding_the_hessian_matrix.ipynb
│   ├── 08_markov_chains_and_detailed_balance.ipynb
│   ├── 09_mcmc_mechanics_from_scratch.ipynb
│   ├── 10_mcmc_production_diagnostics.ipynb
│   ├── 11_t_test_frequentist_vs_bayesian.ipynb
│   ├── 12_bayesian_regression_and_glms.ipynb
│   ├── 13_hierarchical_models_and_partial_pooling.ipynb
│   ├── 14_marginal_likelihood_and_model_comparison.ipynb
│   ├── 15_calibrating_bayesian_decay_and_memory.ipynb
│   ├── 16_bayesian_decision_theory_and_predictive_checks.ipynb
│   ├── 17_tolerance_intervals_and_decision_sizing.ipynb
│   ├── 18_case_studies_flaky_tests_and_pipelines.ipynb
│   ├── 19_verifying_flaky_test_fixes.ipynb
│   ├── 20_test_promotion_heuristics_vs_bayes.ipynb
│   ├── 21_framework_reliability_and_tolerance_contracts.ipynb
│   └── 22_information_theory_and_culprit_search.ipynb
└── r/                                         <-- R Track (23 chapters: 00 to 22)
    ├── README.md
    ├── 00_START_HERE.ipynb
    ├── 01_foundations_and_conjugate_updating.ipynb
    ├── 02_normal_conjugate_updating.ipynb
    ├── 03_calculating_a_mean_frequentist.ipynb
    ├── 04_calculating_a_mean_bayesian.ipynb
    ├── 05_frequentist_vs_grid_approximation.ipynb
    ├── 06_quadratic_laplace_approximation.ipynb
    ├── 07_understanding_the_hessian_matrix.ipynb
    ├── 08_markov_chains_and_detailed_balance.ipynb
    ├── 09_mcmc_mechanics_from_scratch.ipynb
    ├── 10_mcmc_production_diagnostics.ipynb
    ├── 11_t_test_frequentist_vs_bayesian.ipynb
    ├── 12_bayesian_regression_and_glms.ipynb
    ├── 13_hierarchical_models_and_partial_pooling.ipynb
    ├── 14_marginal_likelihood_and_model_comparison.ipynb
    ├── 15_calibrating_bayesian_decay_and_memory.ipynb
    ├── 16_bayesian_decision_theory_and_predictive_checks.ipynb
    ├── 17_tolerance_intervals_and_decision_sizing.ipynb
    ├── 18_case_studies_flaky_tests_and_pipelines.ipynb
    ├── 19_verifying_flaky_test_fixes.ipynb
    ├── 20_test_promotion_heuristics_vs_bayes.ipynb
    ├── 21_framework_reliability_and_tolerance_contracts.ipynb
    └── 22_information_theory_and_culprit_search.ipynb
```

---

## 🛠️ Step-by-Step Environment Setup

Follow these instructions to configure your environment and run the notebooks
locally.

### Step 1: Clone the Repository

```bash
git clone https://github.com/tarobins/bayesian-inference-intro.git
cd bayesian-inference-intro
```

### Step 2: Python Track Setup 🐍

1. **Create and activate a virtual environment**:
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   ```
2. **Install dependencies**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```
3. **Register the Python kernel with Jupyter**:
   ```bash
   python -m ipykernel install --user --name python3 --display-name "Python 3 (ipykernel)"
   ```

### Step 3: R Track Setup 🔵

1. **Prerequisites**: Ensure [R](https://cloud.r-project.org/) (version 4.0 or
   higher) is installed on your system.
2. **Run the automated R package setup script**:
   ```bash
   Rscript install_packages.R
   ```

### Step 4: Launching the Jupyter Server 🚀

```bash
jupyter lab
```

Once the browser opens:
- **Conceptual Track**: open `conceptual/00_START_HERE.ipynb`
- **AI-Native Track**: open `ai/00_START_HERE.ipynb`
- **Python Track**: open `python/00_START_HERE.ipynb`
- **R Track**: open `r/00_START_HERE.ipynb`
