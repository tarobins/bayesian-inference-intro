# Bayesian Inference: A Practical Introduction — Python Track 🐍

Welcome to the **Python Track** of the Bayesian Inference curriculum! This track provides complete, production-grade implementations of all foundational principles, numerical algorithms, diagnostics, dynamic filtering, and decision theory using **NumPy**, **SciPy**, **Matplotlib**, and **Pandas**.

---

## 🚗 The "Sidecar / Companion" Hybrid Architecture (Pattern 3)

Every worksheet in the Python track is tethered directly to its companion chapter in the **[Conceptual Track (`conceptual/`)](../conceptual/README.md)**:

* **Clean Engineering Code**: The Python notebooks are uncluttered and optimized for practicing engineers, data scientists, and researchers. They focus on rigorous step-by-step mathematical proofs, vectorized from-scratch algorithms, and visual diagnostic dashboards.
* **Instant Intuition via Sidecars**: Whenever you reach a complex mathematical formulation or algorithmic transition, look for the `📖 Conceptual Companion` callout. One click takes you straight to the corresponding physical mental model, everyday analogy, or ASCII diagram in the Conceptual track.
* **Side-by-Side Dual Monitor Friendly**: Open `conceptual/` on one monitor to read the conceptual narrative, and run `python/` on the other to interact with the live simulations!

---

## 📚 Course Syllabus & Learning Progression

| Sheet | Notebook | Conceptual Companion (`conceptual/`) | Core Focus & Techniques |
| :--- | :--- | :--- | :--- |
| **00** | **[00_START_HERE.ipynb](00_START_HERE.ipynb)** | **[Chapter 0: The Big Picture](../conceptual/00_START_HERE.ipynb)** | Syllabus, environment verification, Decision Guide & Master Rosetta Stone |
| **01** | **[01_foundations_and_conjugate_updating.ipynb](01_foundations_and_conjugate_updating.ipynb)** | **[Chapter 1: Learning from Evidence](../conceptual/01_learning_from_evidence_and_conjugacy.ipynb)** | Exact Beta-Binomial conjugacy, Euler integral, Dutch books, Laplace Rule of Succession, online CI tracking |
| **01b** | **[01b_normal_conjugate_updating.ipynb](01b_normal_conjugate_updating.ipynb)** | **[Chapter 1 (Section 4): Gaussian Tug-of-War](../conceptual/01_learning_from_evidence_and_conjugacy.ipynb#4-continuous-measurements-the-gaussian-tug-of-war)** | Continuous Normal conjugacy, precision, inverse-variance weighting, completing the square, sensor fusion |
| **02** | **[02_frequentist_vs_grid_approximation.ipynb](02_frequentist_vs_grid_approximation.ipynb)** | **[Chapter 2: The Frequentist Trap](../conceptual/02_the_frequentist_trap_and_grid_approximation.ipynb)** | Frequentist $t$-test vs. 2D Grid Approximation, prior shrinkage & sensitivity, curse of dimensionality |
| **03** | **[03_quadratic_laplace_approximation.ipynb](03_quadratic_laplace_approximation.ipynb)** | **[Chapter 3: Finding the Peak in Dark](../conceptual/03_finding_the_peak_laplace_and_curvature.ipynb)** | Fast prototyping with `scipy.optimize.minimize`, inverting Hessian matrix ($\Sigma = H^{-1}$), multivariate normal draws |
| **03b** | **[03b_markov_chains_and_detailed_balance.ipynb](03b_markov_chains_and_detailed_balance.ipynb)** | **[Chapter 4 (Section 5): Detailed Balance](../conceptual/04_exploring_the_unknown_markov_chains_and_mcmc.ipynb#5-the-miracle-of-detailed-balance)** | Foundations of Markov chains, transition matrix $P$, stationary distribution $\pi P = \pi$, probability flows, detailed balance proof, discrete Metropolis |
| **04** | **[04_mcmc_mechanics_from_scratch.ipynb](04_mcmc_mechanics_from_scratch.ipynb)** | **[Chapter 4: Exploring the Unknown (MCMC)](../conceptual/04_exploring_the_unknown_markov_chains_and_mcmc.ipynb)** | Metropolis-Hastings from first principles, detailed balance, denominator cancellation, proposal step-size tuning, ESS |
| **05** | **[05_mcmc_production_diagnostics.ipynb](05_mcmc_production_diagnostics.ipynb)** | **[Chapter 5: Production Physics & Diagnostics](../conceptual/05_production_physics_hamiltonian_monte_carlo_and_diagnostics.ipynb)** | Multi-chain sampling, Gelman-Rubin $\hat{R}$, Effective Sample Size ($ESS$), HMC physics, divergences, WAIC, and PSIS-LOO |
| **06** | **[06_calibrating_bayesian_decay_and_memory.ipynb](06_calibrating_bayesian_decay_and_memory.ipynb)** | **[Chapter 6: A Changing World](../conceptual/06_dynamic_world_bayesian_memory_and_decay.ipynb)** | Dynamic non-stationary state filtering, exponential memory decay ($\gamma$), half-life calibration, pre-quential backtesting |
| **07** | **[07_bayesian_decision_theory_and_predictive_checks.ipynb](07_bayesian_decision_theory_and_predictive_checks.ipynb)** | **[Chapter 7: Making Decisions Under Uncertainty](../conceptual/07_making_decisions_under_uncertainty.ipynb)** | Actionable systems, $L_2$ vs $L_1$ vs $0-1$ loss, asymmetric business loss cutoffs, Prior & Posterior Predictive Checks |
| **Appendix A** | **[appendix_understanding_the_hessian_matrix.ipynb](appendix_understanding_the_hessian_matrix.ipynb)** | **[Appendix A: Curvature & Hessians](../conceptual/appendix_a_understanding_the_hessian_matrix.ipynb)** | Visual primer on Hessian & Jacobian matrices, 3D bowl/dome/saddle geometry, Newton optimization, and Laplace precision duality ($\Sigma = H^{-1}$) |
| **Appendix B** | **[appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb](appendix_frequentist_vs_bayesian_tolerance_intervals.ipynb)** | **[Appendix B: Tolerance Intervals & Sizing](../conceptual/appendix_b_tolerance_intervals_and_decision_sizing.ipynb)** | Frequentist vs. Bayesian predictive guarantees: Flaw of Averages, Student's $t$ Prediction Bounds, ISO Tolerance Limits, and Asymmetric Loss |
| **Appendix C** | **[appendix_frequentist_vs_bayesian_flaky_tests.ipynb](appendix_frequentist_vs_bayesian_flaky_tests.ipynb)** | **[Appendix C: Verifying Flaky Test Fixes](../conceptual/appendix_c_verifying_flaky_test_fixes.ipynb)** | Verifying flaky test fixes: why 0/100 passes proves nothing, Fisher's Exact Test, Rule of Three, Wald's SPRT, Beta-Binomial Bayes Factors, and CI loss |
| **Appendix D** | **[appendix_test_promotion_heuristics_vs_bayes.ipynb](appendix_test_promotion_heuristics_vs_bayes.ipynb)** | **[Appendix D: CI/CD Test Promotion](../conceptual/appendix_d_test_promotion_heuristics_vs_bayes.ipynb)** | CI/CD test promotion: $(N, M)$ passing streaks vs. Bayesian dynamic discount filtering and asymmetric loss |

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
