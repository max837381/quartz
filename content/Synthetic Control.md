---
---

Requires same assumptions as [Difference-in-differences](Difference-in-differences.md)

Data-driven weights from pre-period

Often used when a single cluster is treated

![Screenshot 2023-01-31 at 6.42.36 PM.png](Image%20Bank/Screenshot%202023-01-31%20at%206.42.36%20PM.png)

Not credible counterfactual often since different levels and trends

Ridge regression for weighting

Permutation test?

Conformal inference? with time-series

## Methodology

The **synthetic control method** is a statistical method used to evaluate the effect of an intervention in comparative case studies.

It involves the construction of a weighted combination of groups used as controls, to which the treatment group is compared. This comparison is used to estimate what would have happened to the treatment group if it had not received the treatment. 

Unlike difference-in-difference approaches, this method can account for the effects of changing cofounders over time, by weighting the control group to better match the treatment group before the intervention. Another advantage of the synthetic control method is that it allows researchers to systematically select comparison groups.

The synthetic control method combines elements from [Matching](Matching.md) and [Difference-in-differences](Difference-in-differences.md) techniques. Difference-in-differences methods are often-used policy evaluation tools that estimate the effect of an intervention at an aggregate level (e.g. state, country, age group etc.) by averaging over a set of unaffected units.
