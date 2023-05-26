---
---

Propensity-score reweighting is a statistical technique used in economics to control for observables, which are the characteristics of individuals or groups that can affect the outcome of an experiment or study. The technique involves creating a propensity score, which is the probability of an individual or group being assigned to a treatment group based on their observable characteristics.

The propensity score is then used to weight the data so that it reflects the distribution of observable characteristics in the treatment and control groups. This creates a weighted sample that is more representative of the population being studied and reduces bias in estimating treatment effects.

For example, in a study comparing the effectiveness of two different job training programs, there may be differences between the treatment and control groups in terms of age, education level, and work experience. By using propensity-score reweighting, researchers can ensure that these differences are accounted for and that any observed differences in outcomes between the two groups are due to the treatment itself rather than other factors.

Overall, propensity-score reweighting is a powerful tool for controlling for observables in economics research and can help improve the accuracy and reliability of experimental results.

## Steps to use this method

1. Define the treatment variable: Identify the variable that represents the treatment or intervention of interest, such as receiving a certain medication or participating in a particular program.

1. Determine covariates: Select a set of covariates that may affect both treatment assignment and outcome. These variables should be measured for all individuals in the sample and include demographic characteristics, health status, education level, income, etc.

1. Estimate propensity score: Use statistical methods to estimate the probability of receiving treatment (propensity score) based on the covariates identified in step 2.

1. Check balance: Evaluate whether the estimated propensity scores result in balanced treatment and control groups with similar distributions of covariates.

1. Calculate weights: Use the inverse of each individual's estimated propensity score to calculate a weight for each observation in the sample.

1. Apply weights: Apply the calculated weights to regression models to adjust for differences in covariate distributions between treatment and control groups.

1. Check results: Evaluate whether the reweighted regression results provide more accurate estimates of treatment effects than unadjusted models by comparing effect sizes and statistical significance levels.
