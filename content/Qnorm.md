---
title: Qnorm
date created: "Sunday, April 2nd 2023, 12:46:09 pm"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

Q standas for qunailte

Used for Inverse CDF
The qnorm function in R is used to calculate the inverse of the standard normal cumulative distribution function. In other words, it determines the value of x for a given probability p, where x is a random variable following a standard normal distribution.

The syntax for using qnorm in R is as follows:

qnorm(p, mean = 0, sd = 1, lower.tail = TRUE)

where p is the probability value for which we want to find the corresponding x value. The mean and standard deviation parameters are optional and are set to 0 and 1 by default (since we are working with a standard normal distribution). Finally, the lower.tail parameter specifies whether to calculate the probability from the left or right tail of the distribution.

For example, suppose we want to find the value of x for which there is a 90% probability that a randomly selected observation falls below it. We can use the following code:

qnorm(0.9)
\[1] 1.281552

This tells us that x = 1.281552 corresponds to a probability of 0.9 in a standard normal distribution.
