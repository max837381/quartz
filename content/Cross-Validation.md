---
---

We split the whole training set into **multiple validation sets** (known as folds)

Use [Validation Set](Validation%20Set.md) to evaluate the model that was created/analyzed on the remaining folds (which can be thought of as the training set)

Thus in the picture below: 

* Fold 1,2,3 = Analysis Set (can be thought of as a training set)
* Fold 4 = Assessment Set (can be thought of as a validation set)

We only want to use the test set once after completing our model (transformations, adding predictors etc.)

This is why we want to use a cross-validation which is a more extensive way of using a validation set since it uses multiple randomly sampled validation sets, thus allowing us to better gauge our model's performance. (Kind of like a robustness check)

This avoids having a model perform well on a validation set by random chance, taking the average of the performance (through a metric such as Out-of-sample deviance, RMSE, MSE etc.) means we get a better idea of what our model actually performs like

## Simplified Version:

![Screenshot 2023-05-07 at 4.24.49 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%204.24.49%20PM.png)

## 4-fold Cross-Validation (k=4)

This produces multiple validations (e.g. 4 in the picture below)

![Screenshot 2023-05-07 at 4.26.50 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%204.26.50%20PM.png)

We can take the average of the validations using a metric (e.g. Out-of-sample Deviance)

This means we can get a better idea of our model's performance

Allows us to find out how well 

## Coding

````r
# Creating the splits for cross-validation
set.seed(0)
folds <- vfold_cv(df_train, v = 10) # 10-fold cross-validation

folds$splits[[1]] # visualize the split

# OR - get repeated cross-validation (cv tends to produce noisy or high variance estimates)
set.seed(0)
folds <- vfold_cv(df_train, v = 10, strata = origin, repeats = 10) # 10-fold cross-validation

folds$splits[[1]] # visualize the split



# set up a model
lm_fit <-
	linear_reg() %>%
	set_engine('lm') %>%
	set_mode('regression')

# create a worflow
mpg_wf <-
	workflow() %>%
	add_model(lm_fit) %>%
	add_formula(mpg ~ origin * horsepower)

# fit model to folds
trained_models <- fit_resamples(object = mpg_wf,
							   resamples = folds)

# get performance metrics
trained_models %>%
	collect_metrics(summarize = FALSE)

````

## Problems with cross-validation

It tends to produce noisy or high variance estimates

Which is why we can run repeated cross-validation, meaning we run e.g. 10-fold validation multiple times
