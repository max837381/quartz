---
---

In Bayesian statistics, a prior probability distribution is the probability distribution that represents the knowledge or belief about the unknown parameter before any data is observed. It is often denoted as P(θ), where θ denotes the parameter of interest. 

The prior distribution can be based on previous experience, expert opinion, or other sources of information. It provides a way to incorporate existing beliefs into the analysis and helps to quantify uncertainty in the parameter estimation process. 

The choice of prior distribution can have a significant impact on the posterior inference, which is the updated probability distribution of the parameter given the observed data. A strong prior belief can dominate the posterior inference if there is not enough data to contradict it, while a weak prior belief will have little effect on the posterior inference.

There are various types of prior distributions such as uniform, normal, beta, gamma, etc., and their selection depends on the nature of the problem and available information. The selection process should be carefully considered to ensure that it reflects reasonable assumptions about the problem at hand.
[Causal Inference](Causal%20Inference.md) 

Causal evidence can help us understand positive relationships snd can detemrine how we want t at act given this causal evidence

[Normative](Normative.md) vs [Positive](Positive.md) 

## The motivation:

* The need for causal evidence

Causal inference helps shape *effective* policies to meet [Normative](Normative.md) objectives.

## Three problems with correlations:

* [Selection Bias](Selection%20Bias.md)
* [Reverse Causality](Reverse%20Causality.md)
* [Omitted Variable Bias](Omitted%20Variable%20Bias.md)

[Ordinary Least Squares](Ordinary%20Least%20Squares.md)

## Methodologies:

Ranking:

1. [Randomized Control Trial (RCT)](Randomized%20Control%20Trial%20%28RCT%29.md)
1. [Randomized Encouragement Design](Randomized%20Encouragement%20Design.md)
1. "Perfect compliance" [Instrumental Variable](Instrumental%20Variable.md)
1. "Imperfect compliance" [Instrumental Variable](Instrumental%20Variable.md) ([2SLS](2SLS.md))
1. [Regression Discontinuity](Regression%20Discontinuity.md) ("sharp" or "fuzzy")
1. [Difference-in-differences](Difference-in-differences.md)
1. Variations on [Difference-in-differences](Difference-in-differences.md) such as [Synthetic Control](Synthetic%20Control.md), [Matching](Matching.md) plus DiD, etc.
