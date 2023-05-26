---
---

Provides a solution to [Outliers](Outliers.md) and high leverage observations

* Gives different robustness weights from 0-1 to every observations based on its [Residual](Residual.md)
* Assignment of weights (at least in the 'robustbase' R package) happens through [Iteratively Reweighted Least Squares](Iteratively%20Reweighted%20Least%20Squares.md)

![Screenshot 2023-05-07 at 7.01.40 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%207.01.40%20PM.png)

## What is the difference between Robust regression and Robust Standard Error

The first one is to control outliers and the [Robust Standard Errors](Robust%20Standard%20Errors.md) is for heteroscedasticity

## Why don't we remove outliers and run OLS

In most cases it is a bad idea:

* We would **lose information/observations**
* Robust regression **lowers the weights** of outliers so it still provides some useful information to our model without dominating or having a large influence

## Coding

````r
# conduct robust regression
library(robustbase)
rm <- lmrob(outcome ~ predictor, data = df)

summary(rm)
````

#### Plotting the residuals

````r
# plot residuals from our original non-robust model for demonstration purposes to show the weighting in a robust regression
library(sjPlot)
plot_residuals(m)
````

Observation 1 and 3 have the smallest residual and therefore the largest weight

Therefore observation 4 in this case would have a very small if not zero weight thus having no influence on the model

![residuals plot.png](Image%20Bank/residuals%20plot.png)

## Comparing Robust Regression and OLS

````r
# visualizing both models
plot_model(m, type = "pred", show.data = T)
plot_model(rm type = "pred", show.data = T)


# compare coefficients and R^2 of both models
tab_model(m)
tab_model(rm)
````

![Screenshot 2023-05-07 at 7.54.29 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%207.54.29%20PM.png)

Here we could look at the adjusted R^2 to see which fits the data better
