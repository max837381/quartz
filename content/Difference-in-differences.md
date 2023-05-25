---
title: Difference-in-differences
date created: "Tuesday, January 31st 2023, 6:19:35 pm"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

Easy to use
Less credible than many other methods

Often used when nothing was random

Nearly always with panel data
Higher-ranked methods can be used just in cross-sectional data 

The identifying assumption of DiD is that the trends in the
outcome variable – rather than its level – would have
remained identical absent treatment

## Parallel trends

How would treatment group have evolved in absence of the treatment

Difficult/impossible assumption to verify - state of the world we cannot observe

[Fixed Effects](Fixed%20Effects.md)

$$\Large y\_{it} = \beta_0 + \beta_1 Post_t + \beta_2 Treat_t + \beta_3 (Post \times Treat)\_{it}$$

||Pre|Post|
|--|---|----|
|Treat|$\beta_0 + \beta_2$|$\beta_0 + \beta_1 + \beta_2 + \beta_3$|
|Control|$\beta_0$|$\beta_0 + \beta_1$|
||b2|b2 + b3|
|Difference|**b3**||

[Triple Difference-in-Difference](Triple%20Difference-in-Difference.md)
