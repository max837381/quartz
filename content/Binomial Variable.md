---
title: Binomial Variable
date created: "Monday, May 8th 2023, 12:05:22 pm"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

\[0,1] variable

## Statistical Test

#### Exact Binomial Test

For example (how many farmers support sustainable agriculture):

Let's compare our data with what we know (or think, or **expect**) is **true**

* Expected => 50/50 => Null Hypothesis
* Observed => 30/70 => Alternative Hypothesis

P-value = 0.348

Thus we have no difference from the null hypothesis in our data

#### Pearson's Chi-squared Goodness-of-fit Test for Count Data

The problem with the binomial test is that it only can be done on the binomial variable

This test performs the same thing **within one categorical variable** as the Exact Binomial Test

But it can also be used between 2 categorical variables or with a variable that has more than two categories (thus no longer binomial). This makes it useful for [Factor Variables](Factor%20Variables.md)
