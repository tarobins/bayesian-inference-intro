# Bayesian Inference: A Practical Introduction — Python Track 🐍

Welcome to the **Python Track** of the Bayesian Inference curriculum! This track provides complete, production-grade implementations of all foundational principles, numerical algorithms, diagnostics, dynamic filtering, and decision theory using **NumPy**, **SciPy**, **Matplotlib**, and **Pandas**.

---

## 💡 The Unified 3-Layer Pedagogical Architecture

Every worksheet in the Python track is structured with a unified **3-layer pedagogy**:

1. **🧠 Collapsible Deep Intuitions (`<details>`)**: Physical mental models, everyday analogies, and failure modes (The Balance Scale of Pebbles, The Gaussian Tug-of-War, The 100 Parallel Universes, The Pizza Slice Denominator, The Mountain in the Fog, The Frictionless Skate Park, The 30-Day Cliff vs. Fading Ink, The Drowned Statistician, and The Smoke Alarm Matrix). Click to expand if you want physical intuition before touching the math.
2. **📐 First-Principles Mathematics**: Uncollapsed, step-by-step rigorous proofs (Euler integrals, De Finetti exchangeability, Taylor expansions of log-posteriors, Hessian curvature inversion $\Sigma = H^{-1}$, detailed balance proofs, and Wald decision criteria) that flow naturally from the introductory text.
3. **💻 Production-Grade Executable Code**: Clean, vectorized implementations from scratch and with battle-tested libraries (`scipy.optimize`, `scipy.stats`), accompanied by production diagnostics and interactive decision dashboards.

---

## 📚 Course Syllabus & Learning Progression

| Sheet | Notebook | Core Focus & Techniques |
| :--- | :--- | :--- |
| **00** | **[00_START_HERE.ipynb](00_START_HERE.ipynb)** | Syllabus, environment verification, Decision Guide & Master Conceptual Rosetta Stone |
| **01** | **[01_foundations_and_conjugate_updating.ipynb](01_foundations_and_conjugate_updating.ipynb)** | Exact Beta-Binomial conjugacy, Euler integral, Dutch books, Laplace Rule of Succession, online CI tracking |
| **01b** | **[01b_normal_conjugate_updating.ipynb](01b_normal_conjugate_updating.ipynb)** | Continuous Normal conjugacy, precision, inverse-variance weighting, completing the square, sensor fusion |
| **02** | **[02_frequentist_vs_grid_approximation.ipynb](02_frequentist_vs_grid_approximation.ipynb)** | Frequentist $t$-test vs. 2D Grid Approximation, prior shrinkage & sensitivity, curse of dimensionality |
| **03** | **[03_quadratic_laplace_approximation.ipynb](03_quadratic_laplace_approximation.ipynb)** | Fast prototyping with `scipy.optimize.minimize`, inverting Hessian matrix ($\Sigma = H^{-1}$), multivariate normal draws |
| **03b** | **[03b_markov_chains_and_detailed_balance.ipynb](03b_markov_chains_and_detailed_balance.ipynb)** | Foundations of Markov chains, transition matrix $P$, stationary distribution $\pi P = \pi$, probability flows, detailed balance proof, discrete Metropolis |
| **04** | **[04_mcmc_mechanics_from_scratch.ipynb](04_mcmc_mechanics_from_scratch.ipynb)** | Metropolis-Hastings from first principles, detailed balance, denominator cancellation, proposal step-size tuning, ESS |
| **05** | **[05_mcmc_production_diagnostics.ipynb](05_mcmc_production_diagnostics.ipynb)** | Multi-chain sampling, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), HMC physics, divergences, WAIC, and PSIS-LOO |
| **06** | **[06_calibrating_bayesian_decay_and_memory.ipynb](06_calibrating_bayesian_decay_and_memory.ipynb)** | Dynamic non-stationary state filtering, exponential memory decay ($\gamma$), half-life calibration, pre-quential backtesting |
| **07** | **[07_bayesian_decision_theory_and_predictive_checks.ipynb](07_bayesian_decision_theory_and_predictive_checks.ipynb)** | Actionable systems, $L_2$ vs $L_1$ vs $0-1$ loss, asymmetric business loss cutoffs, Prior & Posterior Predictive Checks |
| **Appendix A** | **[appendix_understanding_the_hessian_matrix.ipynb](appendix_understanding_the_hessian_matrix.ipynb)** | Visual primer on Hessian & Jacobian matrices, 3D bowl/dome/saddle geometry, Newton optimization, and Laplace precision duality ($\Sigma = H^{-1}$) |
| **Appendix B** | **[appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb](appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb)** | Frequentist vs. Bayesian predictive guarantees: Flaw of Averages, Student's $t$ Prediction Bounds, ISO Tolerance Limits, and Asymmetric Loss |
| **Appendix C** | **[appendix_frequentist_vs_bayesian_flaky_tests.ipynb](appendix_frequentist_vs_bayesian_flaky_tests.ipynb)** | Verifying flaky test fixes: why 0/100 passes proves nothing, Fisher's Exact Test, Rule of Three, Wald's SPRT, Beta-Binomial Bayes Factors, and CI loss |
| **Appendix D** | **[appendix_test_promotion_heuristics_vs_bayes.ipynb](appendix_test_promotion_heuristics_vs_bayes.ipynb)** | CI/CD test promotion: $(N, M)$ passing streaks vs. Bayesian dynamic discount filtering and asymmetric loss |

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
