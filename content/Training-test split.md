---
title: Training-test split
date created: "Sunday, May 7th 2023, 3:51:45 pm"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

We can develop and optimize a model on the training set

Test the efficiency on the test set

````r
library(rsample)
set.seed(0) # for reproducibility

auto_split <- initial_split(df, prop = 0.8)

df_train <- training(auto_split)
df_test <- testing(auto_split)
````

We should only use the test set once

Avoid data leakage?
Avoid still overfitting on the test data if we iterate and change our mdoela dn test it on test set each time

This is why we can use validation set:

e.g.

* Log transform variable
* Add predictors

Then we test the performance on the validation set before completing our model

Once our model is complete then we use the test set

![Screenshot 2023-05-07 at 4.23.11 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%204.23.11%20PM.png)
