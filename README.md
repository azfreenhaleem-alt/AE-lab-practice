# Applied Econometrics I: Lab Exercises & Practice Problems

This repository serves as a dedicated workspace and study log for the lab practicals of the **Applied Econometrics I** course. The exercises are based on empirical examples and dataset problems from Jeffrey M. Wooldridge's textbook, ***Introductory Econometrics: A Modern Approach***.

The primary goal of this repository is to apply fundamental econometric theories to real-world datasets, shifting from abstract statistical concepts to hands-on estimation, replication, and testing.

---

## Course & Textbook Coverage

The replication scripts and data analysis workflows cover core structural components of cross-sectional and time-series econometrics, including:

* **The Simple Regression Model (Two-Variable OLS)**: Estimating parameters, computing residuals, and evaluating the overall goodness of fit (\(R^2\)).
* **Multiple Regression Analysis: Estimation**: Moving past simple correlations to isolate partial effects while controlling for confounding factors.
* **Multiple Regression Analysis: Inference**: Constructing confidence intervals, calculating standard errors, and implementing classical \(t\) and \(F\) tests for joint statistical significance.
* **Asymptotics & Functional Forms**: Testing for non-linear structures using log-transformations, quadratic terms, interaction effects, and dummy variables.
* **Violations of Classical Assumptions**: Identifying and correcting problems such as heteroskedasticity and omitted variable bias (OVB).

---

## Datasets Used
The workflows replicate classical textbook examples using standardized Wooldridge datasets (available in formats like `.csv`, `.dta`, or loaded via statistical software packages), including but not limited to:
* **`wage1`** / **`wage2`**: Analyzing human capital parameters (education, experience) on earnings.
* **`ceosal1`** / **`ceosal2`**: Evaluating CEO compensation against firm performance.
* **`hprice1`** / **`hprice2`**: Hedonic housing price models incorporating community characteristics and pollution factors.
* **`meap93`**: Studying the impacts of school expenditures on student performance.

---

## Software & Environment Setup

Depending on your lab's preferred configuration, these problems are typically solved using one of the following setups:

### R Ecosystem
Leverages RStudio with specialized CRAN packages tailored specifically for this textbook:
```R
install.packages("wooldridge") # Contains all native textbook datasets
install.packages("lmtest")     # For structural diagnostic testing
install.packages("sandwich")   # For calculating heteroskedasticity-robust standard errors
```

---

## Workspace Directory Layout

The repository is structured by chapter or lab session sequence to keep assignments easily accessible:

```text
├── data/                  # Local copies of dataset files (.csv, .dta)
├── Chapter02_Simple_OLS/  # Simple bivariate regression scripts
├── Chapter03_Multiple_OLS/# Multiple linear regression and partialling-out
├── Chapter04_Inference/   # Hypothesis testing, t-statistics, and F-tests
├── Chapter06_Mechanics/   # Interaction terms, logarithms, and quadratics
└── README.md              # Project documentation
```

## Practical Application Goals
1. **Replication**: Matching estimates, coefficients, and standard errors exactly with the tabulated outputs found in Wooldridge's textbook chapters.
2. **Interpretation**: Translating raw outputs into economic claims (e.g., interpreting a log-level coefficient as an approximate percentage change).
3. **Diagnostic Evaluation**: Evaluating model performance using analytical diagnostics to identify model misspecification or non-constant variance.
