---
title: Python
date created: "Monday, May 1st 2023, 5:28:06 pm"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

## Statistical Models

#### Linear Regression model

Statsmodels package can be used for linear regression in python

````python

import statsmodels.api

X = df.var1
Y = df.var2

# make sure it does not 
X = sm.add_constant(X)

# run the actual regression
lm_fit = sm.OLS(Y,X).fit()

# print output
print(lm_fit.summary())

# print as latex
print(lm_fit.summary().as_latex())


lm_fit. # will get

# predictions
pred = lm_fit.fittedvalues
````

#### Autocorrelation

$$\Large y_t = \alpha + \beta y\_{t-1} + \epsilon_t$$
Standard regression formula that assumes homoskedacity

To check:

whether the beta is 0 or not euqla to zero

yt = r

The plot in lecture 4 econ294a shows that there is autocorrelation
\#todo

````python
import matplotlib.pyplot as plt

res = lm_fit.resid
plt.acorr(res)
````

QQplot

Pylab package #todo
Plots theoretical quantiles of normal distribution vs sample quantiles

Red line 45 degree line are normal distributed

#### Elastic Net

````python

lm_fit = sm.OLS.from_formula('debtgdp ~ rgdpmad', data = df)
print(lm_fit.fit().summary())

lm_fit.fit_regularized(method='elastic_net', alpha=0.5, L1_wt=1.0)
````

#### Quantile Regression

````python
quantreg = smf.quantreg("export ~ rdgpppc", data = df)
res = quantreg.fit(q=0.5)
print(res.summary())
````

## Sklearn module

````python
from sklearn.linear_model import LinearRegression
Y = d1.debtgdp.values.reshape(-1,1)
X = d1.
````
