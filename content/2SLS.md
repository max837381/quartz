---
title: 2SLS
date created: "Tuesday, January 31st 2023, 6:34:13 pm"
date modified: "Thursday, May 25th 2023, 1:23:35 am"
---

2SLS stands for two-stage least squares and is a statistical method used in econometrics to estimate the causal relationship between two variables, where one variable affects the other. 

In the first stage of 2SLS, instrumental variables are used to estimate the endogenous variable, which is affected by other variables in the model. These instrumental variables are exogenous (not affected by any other variable), highly correlated with the endogenous variable, and have a direct effect on the explanatory variable. 

In the second stage of 2SLS, the estimated endogenous variable is used as an independent variable in a regression model to estimate its effect on the dependent variable.

For example, let's say we want to estimate the effect of education on wages. Education can be considered an endogenous variable because it may be affected by other variables such as parental income or ability level. To address this endogeneity issue, we can use an instrumental variable such as proximity to a college or university. We use this instrumental variable to predict education levels and then use education levels as an independent variable in our regression model to estimate its effect on wages.
