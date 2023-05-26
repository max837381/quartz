---
---

## What is the difference between a Probability Mass Function and a Probability Density Function

A Probability Mass Function (PMF) is used to describe the probability distribution of a discrete random variable. It gives the probability of each possible outcome of an experiment or event. For example, the PMF of rolling a fair six-sided die would be:

P(X=1)=1/6
P(X=2)=1/6
P(X=3)=1/6
P(X=4)=1/6
P(X=5)=1/6
P(X=6)=1/6

A Probability Density Function (PDF), on the other hand, is used to describe the probability distribution of a continuous random variable. It gives the probability density at each possible value of the random variable. For example, the PDF of a normal distribution with mean μ and variance σ^2 would be:

f(x) = (1/(σ√(2π))) * e^(-(x-μ)^2/(2σ^2))

**The key difference between PMF and PDF is that PMF gives actual probabilities for each possible outcome, while PDF gives probabilities for ranges of values.**

In summary, PMF is used for discrete random variables, while PDF is used for continuous random variables.

## What is the difference between a PDF and CDF and what do they both show you

A PDF (Probability Density Function) is a function that describes the probability of a random variable taking on a certain value. It tells us the likelihood of a particular event occurring, given the distribution of the data. In other words, it shows the relative frequency of occurrence of different values in a dataset.

On the other hand, a CDF (Cumulative Distribution Function) gives us the cumulative probability of a random variable being less than or equal to a certain value. This means that it shows the probability that an event will occur up to and including a particular value.

In simpler terms, imagine you are flipping a coin. The PDF would tell you how likely it is to get heads or tails on each individual flip. The CDF would tell you how likely it is to get heads or tails after multiple flips - for example, after 10 flips, there is a 50% chance of getting 5 or more heads.

Overall, both PDF and CDF are important tools in statistics as they provide information about the distribution and probability of events occurring in datasets.

PDF or Probability Density Function is a function that describes the likelihood of a random variable taking on a particular value. It is used to describe the probability distribution of continuous random variables. The area under the curve of a PDF represents the probability that a random variable will fall within a specific range of values.

CDF or Cumulative Distribution Function, on the other hand, is the probability distribution function that describes the cumulative probability of a random variable taking on a value less than or equal to a given value. It gives us the probability that our random variable takes on any value less than or equal to our given value. The CDF is always increasing from 0 to 1 and its graph shows how fast our PDF accumulates probabilities as we move from left to right.

Intuitively, PDF tells us how likely it is for our random variable to take on any particular value, while CDF tells us how likely it is for our random variable to take on any value less than or equal to our given value.

## Probability Density Function (PDF)

[Probability Density Function](Probability%20Density%20Function.md) can be used to show

* Used for continuous variables
* Y-axis on PDF shows gradient of CDF
* Derivative of the CDF is the PDF

## Cumulative Density Function (CDF)

[Cumulative Density Function (CDF)](Cumulative%20Density%20Function%20%28CDF%29.md) 

Shows how much of the distribution has been accumulated

* Higher gradient (steeper slope) = higher density
* Flatness in CDF indicates no mass on PMF
* Integrate the PDF to get the CDF

---

The graph can be described using words such as:

* Symmetric
* Skewed
* Heavy-tailed
* Unimodal
* 
