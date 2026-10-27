# Bayesian Inference: A Practical Introduction — AI-Native Track 🤖

Welcome to the **AI-Native Track** of the Bayesian Inference curriculum! This
track is specifically engineered for the era of Large Language Models (LLMs),
autonomous coding agents, and generative DevOps pipelines.

Across all 23 chapters (`00`–`23`), this track reimagines Bayesian inference as
**declarative probabilistic programming for AI agents**: exposing common AI
statistical hallucinations, replacing naive prompts with rigorous mathematical
specifications, and providing copy-pasteable contracts, verification gates, and
execution telemetry.

Every chapter in `ai/` is synchronized 1-to-1 with its conceptual guide in
**[`conceptual/`](../conceptual/README.md)**, its Python implementation in
**[`python/`](../python/README.md)**, and its R counterpart in
**[`r/`](../r/README.md)**.

---

## 🧭 Why the AI-Native Track?

Autonomous AI coding agents now author pull requests, triage CI test failures,
and configure infrastructure pipelines. However, when software engineers prompt
LLMs with statistical questions, standard models routinely hallucinate
perilous heuristics:

* They celebrate $30/30$ passes without realizing a $2\%$ flaky test has a
  $54.5\%$ probability of leaking through by pure chance (**Chapter 18**).
* They run Fisher's Exact Test on small samples, get $p \approx 0.50$, and
  falsely reject successful bug fixes (**Chapter 19**).
* They invent $(10, 2)$ streak counters that suffer from structural amnesia and
  survivorship bias (**Chapter 20**).
* They praise $99.9\%$ per-test reliability while remaining blind to the serial
  compounding that collapses a 1,000-test suite to $36.8\%$ survival
  (**Chapter 21**).
* They recommend deterministic binary search on noisy tests, failing to
  maximize Mutual Information (**Chapter 22**).

This track treats **Prompting as Probabilistic Programming**, turning LLMs into
calibrated epistemic engines.

---

## 📚 Complete 23-Chapter Syllabus (`00`–`23`)

| Ch | Chapter Notebook | Companion Tracks | Core AI Concepts & Telemetry |
| :--- | :--- | :--- | :--- |
| **Part I: Foundations, Conjugacy & Estimating a Mean** | | | |
| **00** | **[Ch 00: Overview & AI Probabilistic Programming](00_START_HERE.ipynb)** | [📖 Conceptual](../conceptual/00_START_HERE.ipynb) · [🐍 Python](../python/00_START_HERE.ipynb) · [🔵 R](../r/00_START_HERE.ipynb) | Prompting as probabilistic programming, 3 paradigms, AI hallucination taxonomy |
| **01** | **[Ch 01: Discrete Conjugacy — Beta-Binomial Updating](01_foundations_and_conjugate_updating.ipynb)** | [📖 Conceptual](../conceptual/01_foundations_and_conjugate_updating.ipynb) · [🐍 Python](../python/01_foundations_and_conjugate_updating.ipynb) · [🔵 R](../r/01_foundations_and_conjugate_updating.ipynb) | Streaming update contracts, Laplace's Rule of Succession, pebble scale bounds |
| **02** | **[Ch 02: Continuous Conjugacy — Normal Models](02_normal_conjugate_updating.ipynb)** | [📖 Conceptual](../conceptual/02_normal_conjugate_updating.ipynb) · [🐍 Python](../python/02_normal_conjugate_updating.ipynb) · [🔵 R](../r/02_normal_conjugate_updating.ipynb) | Multi-sensor fusion contracts, precision stiffness, completing square invariants |
| **03** | **[Ch 03: Calculating a Mean in a Frequentist World](03_calculating_a_mean_frequentist.ipynb)** | [📖 Conceptual](../conceptual/03_calculating_a_mean_frequentist.ipynb) · [🐍 Python](../python/03_calculating_a_mean_frequentist.ipynb) · [🔵 R](../r/03_calculating_a_mean_frequentist.ipynb) | 100 Parallel Universes, Bessel correction, SE ($s/\sqrt{n}$), bootstrap gates |
| **04** | **[Ch 04: Calculating a Mean in a Bayesian World](04_calculating_a_mean_bayesian.ipynb)** | [📖 Conceptual](../conceptual/04_calculating_a_mean_bayesian.ipynb) · [🐍 Python](../python/04_calculating_a_mean_bayesian.ipynb) · [🔵 R](../r/04_calculating_a_mean_bayesian.ipynb) | Joint $(\mu, \sigma)$ inference, 95% HDI vs equal-tailed intervals, Student-$t$ |
| **Part II: Numerical & Sampling Engines** | | | |
| **05** | **[Ch 05: Beyond Conjugacy — 2D Grid Approximation](05_frequentist_vs_grid_approximation.ipynb)** | [📖 Conceptual](../conceptual/05_frequentist_vs_grid_approximation.ipynb) · [🐍 Python](../python/05_frequentist_vs_grid_approximation.ipynb) · [🔵 R](../r/05_frequentist_vs_grid_approximation.ipynb) | 2D posterior grid surfaces, prompt-based grid generators, Curse of Dimensionality |
| **06** | **[Ch 06: Finding the Peak — Quadratic (QUAP) Approximation](06_quadratic_laplace_approximation.ipynb)** | [📖 Conceptual](../conceptual/06_quadratic_laplace_approximation.ipynb) · [🐍 Python](../python/06_quadratic_laplace_approximation.ipynb) · [🔵 R](../r/06_quadratic_laplace_approximation.ipynb) | MAP optimization specifications, Taylor expansion, Hessian curvature extraction |
| **07** | **[Ch 07: Geometry of Curvature — The Hessian Matrix](07_understanding_the_hessian_matrix.ipynb)** | [📖 Conceptual](../conceptual/07_understanding_the_hessian_matrix.ipynb) · [🐍 Python](../python/07_understanding_the_hessian_matrix.ipynb) · [🔵 R](../r/07_understanding_the_hessian_matrix.ipynb) | Salad bowl, igloo, saddle points, covariance matrix conversion ($\Sigma = H^{-1}$) |
| **08** | **[Ch 08: Discrete Markov Chains & Detailed Balance](08_markov_chains_and_detailed_balance.ipynb)** | [📖 Conceptual](../conceptual/08_markov_chains_and_detailed_balance.ipynb) · [🐍 Python](../python/08_markov_chains_and_detailed_balance.ipynb) · [🔵 R](../r/08_markov_chains_and_detailed_balance.ipynb) | Stationary distribution $\pi^* P = \pi^*$, Detailed Balance, state machines |
| **09** | **[Ch 09: First Principles — Metropolis-Hastings MCMC](09_mcmc_mechanics_from_scratch.ipynb)** | [📖 Conceptual](../conceptual/09_mcmc_mechanics_from_scratch.ipynb) · [🐍 Python](../python/09_mcmc_mechanics_from_scratch.ipynb) · [🔵 R](../r/09_mcmc_mechanics_from_scratch.ipynb) | Denominator cancellation, step size tuning, chain convergence invariants |
| **10** | **[Ch 10: Production Scale — HMC Physics & Diagnostics](10_mcmc_production_diagnostics.ipynb)** | [📖 Conceptual](../conceptual/10_mcmc_production_diagnostics.ipynb) · [🐍 Python](../python/10_mcmc_production_diagnostics.ipynb) · [🔵 R](../r/10_mcmc_production_diagnostics.ipynb) | Hamiltonian dynamics, $\hat{R} < 1.01$, ESS bulk/tail, divergence detection |
| **Part III: Applied Modeling, Regression, Hierarchy & Model Comparison** | | | |
| **11** | **[Ch 11: Comparing Two Groups — The $t$-Test & BEST](11_t_test_frequentist_vs_bayesian.ipynb)** | [📖 Conceptual](../conceptual/11_t_test_frequentist_vs_bayesian.ipynb) · [🐍 Python](../python/11_t_test_frequentist_vs_bayesian.ipynb) · [🔵 R](../r/11_t_test_frequentist_vs_bayesian.ipynb) | NHST fallacies, Welch's $t$ vs JZS Bayes Factors ($BF_{10}$), ROPE verification |
| **12** | **[Ch 12: Bayesian Regression, Poisson Counts & GLMs](12_bayesian_regression_and_glms.ipynb)** | [📖 Conceptual](../conceptual/12_bayesian_regression_and_glms.ipynb) · [🐍 Python](../python/12_bayesian_regression_and_glms.ipynb) · [🔵 R](../r/12_bayesian_regression_and_glms.ipynb) | Generalized linear models, credible band contracts, Poisson rate estimation |
| **13** | **[Ch 13: Hierarchical Models, Partial Pooling & Shrinkage](13_hierarchical_models_and_partial_pooling.ipynb)** | [📖 Conceptual](../conceptual/13_hierarchical_models_and_partial_pooling.ipynb) · [🐍 Python](../python/13_hierarchical_models_and_partial_pooling.ipynb) · [🔵 R](../r/13_hierarchical_models_and_partial_pooling.ipynb) | Partial pooling contracts, Stein's Paradox, shrinkage weights, Neal's funnel |
| **14** | **[Ch 14: Likelihood vs. Marginal Likelihood & Occam's Razor](14_marginal_likelihood_and_model_comparison.ipynb)** | [📖 Conceptual](../conceptual/14_marginal_likelihood_and_model_comparison.ipynb) · [🐍 Python](../python/14_marginal_likelihood_and_model_comparison.ipynb) · [🔵 R](../r/14_marginal_likelihood_and_model_comparison.ipynb) | Point likelihood vs marginal evidence, Bayesian Occam's razor, LOO-CV |
| **Part IV: Dynamic Systems, Decision Theory & Predictive Guarantees** | | | |
| **15** | **[Ch 15: Dynamic World — Calibrating Memory Decay ($\gamma$)](15_calibrating_bayesian_decay_and_memory.ipynb)** | [📖 Conceptual](../conceptual/15_calibrating_bayesian_decay_and_memory.ipynb) · [🐍 Python](../python/15_calibrating_bayesian_decay_and_memory.ipynb) · [🔵 R](../r/15_calibrating_bayesian_decay_and_memory.ipynb) | 30-Day Cliff vs Fading Ink, exponential decay ($\gamma$), effective horizon $N_{\text{eff}}$ |
| **16** | **[Ch 16: Actionable Systems — Decision Theory & Loss Functions](16_bayesian_decision_theory_and_predictive_checks.ipynb)** | [📖 Conceptual](../conceptual/16_bayesian_decision_theory_and_predictive_checks.ipynb) · [🐍 Python](../python/16_bayesian_decision_theory_and_predictive_checks.ipynb) · [🔵 R](../r/16_bayesian_decision_theory_and_predictive_checks.ipynb) | Flaw of Averages, asymmetric smoke alarm loss matrix, predictive checks |
| **17** | **[Ch 17: Predictive Guarantees — Tolerance Intervals](17_tolerance_intervals_and_decision_sizing.ipynb)** | [📖 Conceptual](../conceptual/17_tolerance_intervals_and_decision_sizing.ipynb) · [🐍 Python](../python/17_tolerance_intervals_and_decision_sizing.ipynb) · [🔵 R](../r/17_tolerance_intervals_and_decision_sizing.ipynb) | Confidence vs Prediction vs Tolerance, Plug-In Fallacy, ISO 16269 non-central $t$ |
| **Part V: Production Reliability, CI/CD & Active Learning** | | | |
| **18** | **[Ch 18: Gateway Synthesis — Flaky Tests, Streaks & CI Pipelines](18_case_studies_flaky_tests_and_pipelines.ipynb)** | [📖 Conceptual](../conceptual/18_case_studies_flaky_tests_and_pipelines.ipynb) · [🐍 Python](../python/18_case_studies_flaky_tests_and_pipelines.ipynb) · [🔵 R](../r/18_case_studies_flaky_tests_and_pipelines.ipynb) | 50-Sided Die zero-failure trap, $(N, M)$ streak traps, End-to-End CI/CD Router |
| **19** | **[Ch 19: Verifying Flaky Test Fixes — Wald's SPRT & Bayes Factors](19_verifying_flaky_test_fixes.ipynb)** | [📖 Conceptual](../conceptual/19_verifying_flaky_test_fixes.ipynb) · [🐍 Python](../python/19_verifying_flaky_test_fixes.ipynb) · [🔵 R](../r/19_verifying_flaky_test_fixes.ipynb) | Fisher's Exact Test trap, Rule of Three, Wald's SPRT ($19:1$ odds), $BF = 4.00$ |
| **20** | **[Ch 20: CI/CD Test Promotion — $(N, M)$ Streaks vs. Bayesian Filtering](20_test_promotion_heuristics_vs_bayes.ipynb)** | [📖 Conceptual](../conceptual/20_test_promotion_heuristics_vs_bayes.ipynb) · [🐍 Python](../python/20_test_promotion_heuristics_vs_bayes.ipynb) · [🔵 R](../r/20_test_promotion_heuristics_vs_bayes.ipynb) | Gambler's Fallacy in CI, 4 traps of streaks, survivorship bias, dynamic discount gate |
| **21** | **[Ch 21: Testing Framework Reliability & Two-Tier Tolerance Contracts](21_framework_reliability_and_tolerance_contracts.ipynb)** | [📖 Conceptual](../conceptual/21_framework_reliability_and_tolerance_contracts.ipynb) · [🐍 Python](../python/21_framework_reliability_and_tolerance_contracts.ipynb) · [🔵 R](../r/21_framework_reliability_and_tolerance_contracts.ipynb) | Serial suite compounding $R_{\text{suite}} = (1-\theta)^K$, Two-Tier Contract, FDR economics |
| **22** | **[Ch 22: Active Learning & Information-Theoretic Flake Culprit Search](23_active_learning_and_culprit_search.ipynb)** | [📖 Conceptual](../conceptual/23_active_learning_and_culprit_search.ipynb) · [🐍 Python](../python/23_active_learning_and_culprit_search.ipynb) | Shannon Entropy in bits, perplexity, Euler Beta integral, Mutual Information $I(C; Y)$ |

---

## 🏛️ The 8-Part Architecture of an AI-Native Chapter

Every notebook in this track is structured with a standardized 8-part epistemic
architecture:

1. **Cell 0: Title, Navigation & Modern AI Context**: Introduces the engineering
   challenge and explains why naive AI approaches fail in modern software
   ecosystems.
2. **Cell 1: Part 1 — The Naive Prompt Trap & Forensic Post-Mortem**:
   Transcribes
   the exact prompt an engineer types, the plausible hallucination returned by
   the LLM, and a detailed forensic breakdown of the mathematical flaw.
3. **Cell 2: Part 2 — Prompting as Probabilistic Programming**: Introduces
   a **Progressive Ladder of Specification Simplicity**:
   * **Level 1 (The 3-Sentence Micro-Spec)**: The everyday 50-word prompt
     (Data, Prior/Baseline, Loss/Action) for fast chat conversations.
   * **Level 2 (The Model Formula Shorthand)**: 2 lines of mathematical DSL
     (`Model: ... Data: ... Action: ...`).
   * **Level 3 (The Socratic Interviewer)**: A 1-sentence prompt forcing the AI
     to interview you for required priors and costs.
   * **Level 4 (The Production YAML Contract)**: A collapsible production schema
     for automated linters, autonomous pipelines, and safety audits.
4. **Cell 3: Part 3 — The 4 Mandatory Agentic Verification Gates**: Concrete
   numerical tests (Prior Predictive, Simulation-Based Calibration, Analytical
   Invariants, Posterior Predictive Retrodiction).
5. **Cell 4: Part 4 — Worked Agent Execution Transcript & Telemetry**: Full
   step-by-step mathematical logs, ASCII posterior densities, and decision
   telemetry from real execution.
6. **Cell 5: Part 5 — Naive AI Prompt vs. Calibrated Epistemic Specification**:
   Side-by-side comparative analysis of error rates, compute costs, and
   reliability guarantees.
7. **Cell 6: Part 6 — 🎯 Check Your Understanding (3-Tier "Audit the AI"
   Exercises)**:
   * 🟢 **Tier 1 (Spot the AI Hallucination)**: Catching flawed claims.
   * 🟡 **Tier 2 (Refactor the Flawed Specification)**: Fixing defective prompts.
   * 🔴 **Tier 3 (Architect an Autonomous Agent Contract)**: Building end-to-end
     production agents with complete expandable solutions.
8. **Cell 7: Key Takeaways & Course Synthesis**: Distills core lessons into
   actionable principles with links to companion tracks.

---

## 🗺️ How to Use This Track

1. **Read Sequentially**: Start with
   **[`00_START_HERE.ipynb`](00_START_HERE.ipynb)**
   or jump straight to Part V (**Chapters 18–22**) for production CI/CD and
   active learning.
2. **Copy Agent Specifications**: In daily work, copy the 3-Sentence
   Micro-Spec (Level 1) or Model Formula (Level 2) directly into LLM chats.
   For autonomous pipelines and automated CI linters, expand the Level 4 YAML
   contract.
3. **Audit Your Team's Prompts**: Use Part 1 and Part 6 to evaluate and
   stress-test how your developers and AI tools reason about probability and
   uncertainty.
4. **Inspect Companion Tracks**: Click the `📖 Conceptual`, `🐍 Python`, or
   `🔵 R` companion links in any chapter header or footer to explore the
   theoretical derivations and executable code!
