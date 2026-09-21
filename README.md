# Bayesian Inference: A Practical Introduction
### *From Exact Conjugate Foundations to Production MCMC, Dynamic Reliability & Decision Theory*

Welcome to **Bayesian Inference: A Practical Introduction**! This repository contains a complete, production-grade hands-on curriculum structured in an intuitive, progressive learning sequence:
from exact analytical foundations (Beta-Binomial conjugacy) $\to$ numerical approximation (Grid & Laplace) $\to$ production MCMC algorithms $\to$ dynamic filtering and risk-minimizing Bayesian decision theory.

---

## 🚗 The "Sidecar / Companion" Hybrid Architecture (Pattern 3)

To deliver both deep physical intuition and production mathematical/engineering rigor without compromising either, the curriculum is organized as **separate, seamlessly tethered companion tracks**:

* 📖 **[Conceptual Track (`conceptual/`)](conceptual/README.md)**: A pure reading edition designed for comprehension. Zero code, minimal math notation, and rich physical mental models (The Balance Scale of Pebbles, The Gaussian Tug-of-War, The 100 Parallel Universes, The Pizza Slice Denominator, The Mountain in the Fog, The Frictionless Skate Park, The 30-Day Cliff vs. Fading Ink, The Drowned Statistician, and The Smoke Alarm Matrix).
* 🐍 **[Python Track (`python/`)](python/README.md)**: A rigorous engineering lab manual built with `numpy`, `scipy.optimize`, `scipy.stats`, `matplotlib`, and `pandas`. Features uncollapsed step-by-step mathematical derivations, from-scratch algorithmic implementations, and production diagnostics.
* 🔵 **[R Track (`r/`)](r/README.md)**: Built with Base R, `optim`, `rethinking` (Stan HMC engine), `coda`, and `loo`.
* 🔗 **Deep Section-Level Tethering**: Every notebook contains reciprocal sidecar links at the header and section levels:
  - Inside Python notebooks: `📖 Conceptual Companion` callouts link to the exact section in the conceptual reader explaining the physical intuition.
  - Inside Conceptual chapters: `🐍 See the Code` callouts link to the runnable code cell implementing that model from scratch.

---

## 📚 Complete 8-Part Learning Progression

| Module | Conceptual Guide (`conceptual/`) | Python Lab (`python/`) | R Lab (`r/`) | Key Concepts & Physical Models |
| :--- | :--- | :--- | :--- | :--- |
| **00** | **[Chapter 0: The Big Picture](conceptual/00_START_HERE.ipynb)** | **[Sheet 0: Setup & Guide](python/00_START_HERE.ipynb)** | **[Sheet 0: Setup & Guide](r/00_START_HERE.ipynb)** | The Three Paradigms, The 100 Parallel Universes, The Intractable Denominator |
| **01** | **[Chapter 1: Learning from Evidence](conceptual/01_learning_from_evidence_and_conjugacy.ipynb)** | **[Sheet 1: Beta Conjugacy](python/01_foundations_and_conjugate_updating.ipynb)** | **[Sheet 1: Beta Conjugacy](r/01_foundations_and_conjugate_updating.ipynb)** | The Balance Scale of Pebbles, Laplace's Sunrise $(k+1)/(n+2)$, CI streaming updates |
| **01b** | **[Chapter 1 (Section 4): Tug-of-War](conceptual/01_learning_from_evidence_and_conjugacy.ipynb#4-continuous-measurements-the-gaussian-tug-of-war)** | **[Sheet 1b: Normal Conjugacy](python/01b_normal_conjugate_updating.ipynb)** | **[Sheet 1b: Normal Conjugacy](r/01b_normal_conjugate_updating.ipynb)** | The Two GPS Sensors, Precision ($1/\sigma^2$) as voting power, Sensor fusion |
| **02** | **[Chapter 2: The Frequentist Trap](conceptual/02_the_frequentist_trap_and_grid_approximation.ipynb)** | **[Sheet 2: 2D Grid Approximation](python/02_frequentist_vs_grid_approximation.ipynb)** | **[Sheet 2: 2D Grid Approximation](r/02_frequentist_vs_grid_approximation.ipynb)** | 95% Confidence Interval trap, The Cookie Sheet 1,000 Buckets, Curse of Dimensionality |
| **03** | **[Chapter 3: Finding the Peak in Dark](conceptual/03_finding_the_peak_laplace_and_curvature.ipynb)** | **[Sheet 3: Quadratic (Laplace) Approx](python/03_quadratic_laplace_approximation.ipynb)** | **[Sheet 3: Quadratic (Laplace) Approx](r/03_quadratic_laplace_approximation.ipynb)** | Hiking in fog, MAP is a single number vs distribution, Boots feeling curvature $\Sigma = H^{-1}$ |
| **03b** | **[Chapter 4 (Section 5): Detailed Balance](conceptual/04_exploring_the_unknown_markov_chains_and_mcmc.ipynb#5-the-miracle-of-detailed-balance)** | **[Sheet 3b: Discrete Markov Chains](python/03b_markov_chains_and_detailed_balance.ipynb)** | **[Sheet 3b: Discrete Markov Chains](r/03b_markov_chains_and_detailed_balance.ipynb)** | Memoryless walker, transition matrix $P$, stationary distribution $\pi P = \pi$, detailed balance |
| **04** | **[Chapter 4: Exploring the Unknown](conceptual/04_exploring_the_unknown_markov_chains_and_mcmc.ipynb)** | **[Sheet 4: MCMC from Scratch](python/04_mcmc_mechanics_from_scratch.ipynb)** | **[Sheet 4: MCMC from Scratch](r/04_mcmc_mechanics_from_scratch.ipynb)** | King Markov, Denominator cancellation, 10,000-row spreadsheet, The Drunk Hiker |
| **05** | **[Chapter 5: Production Physics](conceptual/05_production_physics_hamiltonian_monte_carlo_and_diagnostics.ipynb)** | **[Sheet 5: Multi-Chain Diagnostics](python/05_mcmc_production_diagnostics.ipynb)** | **[Sheet 5: Multi-Chain Diagnostics](r/05_mcmc_production_diagnostics.ipynb)** | The Frictionless Skate Park (HMC), The Four Hikers ($\hat{R} < 1.01$), $ESS$, Divergences |
| **06** | **[Chapter 6: A Changing World](conceptual/06_dynamic_world_bayesian_memory_and_decay.ipynb)** | **[Sheet 6: Dynamic Memory Decay](python/06_calibrating_bayesian_decay_and_memory.ipynb)** | **[Sheet 6: Dynamic Memory Decay](r/06_calibrating_bayesian_decay_and_memory.ipynb)** | The 30-Day Cliff artifact & phantom signals, The Fading Ink model, Half-life calibration |
| **07** | **[Chapter 7: Decisions Under Uncertainty](conceptual/07_making_decisions_under_uncertainty.ipynb)** | **[Sheet 7: Decision Theory & PPC](python/07_bayesian_decision_theory_and_predictive_checks.ipynb)** | **[Sheet 7: Decision Theory & PPC](r/07_bayesian_decision_theory_and_predictive_checks.ipynb)** | Flaw of Averages (3-ft river), The Smoke Alarm (\$5 vs \$1M), Sanity Mirror (PPC) |

---

## 📑 Special Topic Appendices

| Appendix | Conceptual Guide (`conceptual/`) | Python Lab (`python/`) | Core Focus & Techniques |
| :--- | :--- | :--- | :--- |
| **Appendix A** | **[Appendix A: Curvature & Hessians](conceptual/appendix_a_understanding_the_hessian_matrix.ipynb)** | **[Appendix: Understanding the Hessian](python/appendix_understanding_the_hessian_matrix.ipynb)** | Salad Bowl, Igloo Dome, Pringle Chip (saddle point), SymPy calculus, Newton vs Gradient Descent |
| **Appendix B** | **[Appendix B: Tolerance Intervals](conceptual/appendix_b_tolerance_intervals_and_decision_sizing.ipynb)** | **[Appendix: Tolerance Intervals](python/appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb)** | The 3 Kinds of Intervals (CI vs PI vs TI), Plug-In Fallacy exposed, ISO 16269-6, Posterior predictive sampling |
| **Appendix C** | **[Appendix C: Verifying Flaky Fixes](conceptual/appendix_c_verifying_flaky_test_fixes.ipynb)** | **[Appendix C: Verifying Flaky Fixes](python/appendix_frequentist_vs_bayesian_flaky_tests.ipynb)** | The 50-Sided Die (100 passes prove nothing), Courtroom Shoe Print ($BF=4.0$), Wald's SPRT, Shake table |
| **Appendix D** | **[Appendix D: CI Test Promotion](conceptual/appendix_d_test_promotion_heuristics_vs_bayes.ipynb)** | **[Appendix D: Test Promotion Heuristics](python/appendix_test_promotion_heuristics_vs_bayes.ipynb)** | Gambler's Fallacy in CI, 4 Traps of Streaks (58.4% broken test pass), Dynamic Bayesian filter |
| **Case Studies**| **[Chapter 8: Real-World Case Studies](conceptual/08_case_studies_flaky_tests_and_pipeline_decisions.ipynb)** | **[Appendices C & D](python/appendix_frequentist_vs_bayesian_flaky_tests.ipynb)** | End-to-end reliability engineering pipeline decision synthesis & master reference matrix |

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

## 🧭 Repository Layout

```text
bayesian-inference-intro/
├── README.md                                  <-- Master course syllabus & setup guide (You are here)
├── requirements.txt                           <-- Python dependencies & Jupyter packages
├── install_packages.R                         <-- R package installation & IRkernel registration script
├── conceptual/                                <-- Conceptual Track (Plain English, Zero Code, Minimal Math)
│   ├── README.md                              <-- Conceptual track guide & syllabus
│   ├── 00_START_HERE.ipynb                    <-- The Big Picture & The Three Paradigms
│   ├── 01_learning_from_evidence_and_conjugacy.ipynb
│   ├── 02_the_frequentist_trap_and_grid_approximation.ipynb
│   ├── 03_finding_the_peak_laplace_and_curvature.ipynb
│   ├── 04_exploring_the_unknown_markov_chains_and_mcmc.ipynb
│   ├── 05_production_physics_hamiltonian_monte_carlo_and_diagnostics.ipynb
│   ├── 06_dynamic_world_bayesian_memory_and_decay.ipynb
│   ├── 07_making_decisions_under_uncertainty.ipynb
│   ├── 08_case_studies_flaky_tests_and_pipeline_decisions.ipynb
│   ├── appendix_a_understanding_the_hessian_matrix.ipynb
│   ├── appendix_b_tolerance_intervals_and_decision_sizing.ipynb
│   ├── appendix_c_verifying_flaky_test_fixes.ipynb
│   └── appendix_d_test_promotion_heuristics_vs_bayes.ipynb
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
- For the Conceptual Reader: navigate to `conceptual/` and open `00_START_HERE.ipynb`.
- For Python: navigate to `python/` and open `00_START_HERE.ipynb` (Kernel: **`Python 3 (Bayesian Intro)`**).
- For R: navigate to `r/` and open `00_START_HERE.ipynb` (Kernel: **`R`**).
