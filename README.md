# Gumbel Distribution for Extreme Wind Speeds

## Overview

This repository contains the Quarto source, analysis, and compiled report for Assignment 1 of the STA Honours Likelihood module.

The project investigates the modelling of extreme December wind speeds in Cape Town using the Gumbel distribution. Both Maximum Likelihood and Bayesian approaches are implemented and compared.

The analysis focuses on daily maximum wind speeds recorded at the Goodwood weather station between 2014 and 2019.

---

## Objectives

The main objectives of this assignment are to:

- Extract December daily maximum wind speed observations  
- Fit a Gumbel distribution using Maximum Likelihood Estimation (MLE)  
- Fit the same model using a Bayesian approach in Stan  
- Estimate extreme wind speed quantiles:
  - Q0.90  
  - Q0.95  
  - Q0.99  
- Construct confidence intervals for the estimated quantiles  
- Compare likelihood-based and Bayesian inference methods  
- Interpret the results in the context of environmental risk assessment  

---

## Methods

### Exploratory Data Analysis (EDA)
- Distribution visualisation (generated within Quarto)
- Summary statistics
- Investigation of extreme observations  

---

### Maximum Likelihood Estimation
- Manual implementation of the Gumbel likelihood  
- Numerical optimisation for parameter estimation  
- Likelihood surface exploration  
- Wald confidence intervals  

---

### Reparameterisation
The likelihood is reparameterised in terms of extreme quantiles to better quantify uncertainty for rare wind speed events.

---

### Bayesian Inference
- Stan implementation of the Gumbel model (`stan/gumbel.stan`)  
- Posterior estimation and uncertainty quantification  
- Comparison with classical likelihood methods  

---

## Repository Structure

```text
.
├── data/
│   # Wind speed datasets used in the analysis
│
├── report/
│   ├── Assignment 1.qmd
│   └── Assignment 1.pdf
│
├── stan/
│   └── gumbel.stan
│
└── README.md
