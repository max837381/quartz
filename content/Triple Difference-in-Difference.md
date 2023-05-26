---
---

DDD

Treated state

Pre vs post

Treated individual

## Regression

$$ y\_{it} = \beta_0 + \beta_1 Post_t + \beta_2 S + \beta_3 T + \beta_4Post * S + \beta_5 Post \times T + \beta_6S \times T + \beta_7 \times Post \times S \times T + \epsilon$$

||Pre|Post|
|--|---|----|
|Treated state, treated group|$\beta_0 + \beta_2 + \beta_3 + \beta_6$|$\beta_0 + \beta_1 + \beta_2 + \beta_3 + \beta_4 + \beta_5 + \beta_6 + \beta_7$|
|Treated state, untreated group|$\beta_0 + \beta_2$|$\beta_0 + \beta_1 + \beta_2 + \beta_4$|
|After cancelling out|b0 + b2|b0 + b1 + b2 + b4|
|Difference 1|**b5 + b7**||
||||
|Untreated state, treated group|b0 + b3|b0 + b1 + b3 + b5|
|Untreated state, untreated group|b0|b0 + b1|
|After cancelling out|b3|b3 + b5|
|Difference 2|**b5**||
|Ending Difference (1-2)|b7||
