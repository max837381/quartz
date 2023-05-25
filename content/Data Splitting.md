---
title: Data Splitting
date created: "Saturday, March 18th 2023, 4:49:18 pm"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

In R:

y_train \<- train$Purchase
x_train \<- train\[, -which(names(train) == "Purchase")]
