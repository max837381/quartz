---
---

Poisson is for discrete data (quiz 3)

---

(2B)

Exponential:

p(yi|\[SME])

Something it will be parameterize in terms of lambda or sometimes in terms of 1/lambda

Assume:

$y_i > 0$ 

2B(1)

Normal quantile-quantile plot: sampling model criticism
Also known as [QQ Plot](QQ%20Plot.md)

Plot the CDF of N(same mean & SD as data) and plot the empirical CDF on top

Empirical CDF = f(hat)*n(t|y) = (number of yi \< or equal t)/n*

Exchangeability is 

non-negative integers

Imagine if we tried to model this dataset discretely?

How many support points would the discrete distribution at an absolute minimum?

What does it mean to model things discretely?

[Support Points](Support%20Points.md) as possible values before you saw them

Y_i as a discrete random variable = the support set would have to 
$$y_i \epsilon \space {0,1,2,...,21195}$$ 
within brackets are all support points but perhaps 0 is not included

We have to set 21194 probability mass functions?

Thus we can say we have too many support points, it would be much better to model the ...?? $$y\_{i} \space \epsilon \space (0,\infty)$$

---

![Screenshot 2023-02-21 at 5.46.47 PM.png](Image%20Bank/Screenshot%202023-02-21%20at%205.46.47%20PM.png)

MUch better to model as continous underlying process:

When running Professor's Draper's code for 2B

Part of R code is not applicable

**Posterior distribution looks like :**

![Screenshot 2023-02-19 at 3.44.20 PM.png](Image%20Bank/Screenshot%202023-02-19%20at%203.44.20%20PM.png)

Normal distribuition

alpha/2 left 

p(lamba|exponential sampling model)

Shows you can construct a Bayesian interval:

* We pretend this distirbution this is a normal curve

oh god haha that sounds gnarly
i guess 11th hour it is

i like the vibes at the abbbey tho so maybe another time

---

2B2
![Screenshot 2023-02-19 at 3.52.02 PM.png](Image%20Bank/Screenshot%202023-02-19%20at%203.52.02%20PM.png)
Demonstrating that a conjugant prior exists:

1. Write down the likelihood function, consider it as a member of the fmaily of probability density functions: it is a inverse gamma as think of its as an unnormalized fgunction of lambda

1. Look that is a member of the inverse gamma family: look in Gelman's appendix: look if it is a reognized member of 

1. The product of two inverse gamma's is another one: inverse gamma

We do have a conjugant prior fmaily

Go ahead and multiply everything out 

---

Information in MLE equals:

$$ \Large \hat I (\hat\lambda\_{MLE}) $$

* Which is order N and goes up linearly
* Represents how much we know about lambda

[Variance](Variance.md) represents how much we do not know about lambda

Variance is inversely related to the information

Estimated Frequentist sampling variance of the MLE = 

![Screenshot 2023-04-01 at 5.23.06 PM.png](Image%20Bank/Screenshot%202023-04-01%20at%205.23.06%20PM.png)
![Screenshot 2023-04-01 at 5.20.48 PM.png](Image%20Bank/Screenshot%202023-04-01%20at%205.20.48%20PM.png)

![Screenshot 2023-04-01 at 5.37.12 PM.png](Image%20Bank/Screenshot%202023-04-01%20at%205.37.12%20PM.png)

100(1-alpha)% large N approximate Confidence Interval for lambda = 

lambda.hat.mle +/- Z number from the standard normal curve also denoted as: 

$$\Large \Phi^{-1}(1-\frac{\alpha}{2})$$

multiplied by the estimated standard error.

The inverse Phi is also known as the [Qnorm](Qnorm.md) funcion in [R](R.md)

## Inverse Gamma Distribution

|Us|R|
|--|-|
|$\Large \alpha$|shape|
|$\Large\beta$|rate|

invgamma package function in R

![Screenshot 2023-04-03 at 3.33.36 PM.png](Image%20Bank/Screenshot%202023-04-03%20at%203.33.36%20PM.png)

[Bernstein-von Mises Theorem](Bernstein-von%20Mises%20Theorem.md) says that under regularity conditions for large n, that likelihood inference is roughly equal to Bayes inference with a low information prior.

---

Bayes is great:

* Always produces results that are logically internally consistent
  * Frequentist methods (both Neyman style and Fisher style) can violate [Logical Internal Consistency](Logical%20Internal%20Consistency.md)

Bayes can be terrible:

* nothing in the Bayesian inferential paradigm guarantees good calibration with the real world
* calibration: inferential conclusions that get the right answer about as often as we've said they would

Example: How to break Bayes

* Use high information prior that is completely out of step with reality.

The Bayesian approach focuses on cohererence and logical consistency, while the frequesntist approach focuses more on calibration

These two focuses together help to make our uncertainty assessments to be both internally and externally consistent
