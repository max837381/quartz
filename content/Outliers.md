---
---

Observations that fall beyond the overall cluster of data

## Coding

````r
# run OLS regression
m <- lm(outcome ~ predictor, data = d)

# make residual diagnostics
library(olsrr)
ols_plot_resid_lev(m)
````

Finds observations that are obvious outliers

![Screenshot 2023-05-07 at 7.31.41 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%207.31.41%20PM.png)
