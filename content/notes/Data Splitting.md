---
---

In R:

y_train \<- train$Purchase
x_train \<- train\[, -which(names(train) == "Purchase")]
