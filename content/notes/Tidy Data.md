---
---

![Screenshot 2023-05-07 at 5.18.00 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%205.18.00%20PM.png)

## Why do we want tidy data

* Easy to transform
* Easy to visualize
* Easy to manipulate
* Easy to analyze

![Screenshot 2023-05-07 at 5.19.29 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%205.19.29%20PM.png)

Tidying up data before analysis

![Screenshot 2023-05-07 at 5.15.10 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%205.15.10%20PM.png)

Whatever changes in your data - put it into columns

#### Why columns?

Easy to store data that is similar

Data cannot be identical

Columns = variables

* which is what we need to make data analysis possible

## Common Problems with data

#### 1. One variable is stored in multiple columns

e.g. when a variable is stored in column names
This could be when years are used for columns (see below)

This is when we would want to make the data **longer**

![Screenshot 2023-05-07 at 5.33.49 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%205.33.49%20PM.png)

#### 2. Multiple variables are stored in one column

Observations in one column that are actually column keys or variables that do not belong together

In the example below: cases and population do not refer to the same thing and must be separated

Now we would make the data **wider**

![Screenshot 2023-05-07 at 6.39.09 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%206.39.09%20PM.png)

#### 3. More than one value in the same cell

Here we would need to separate values into multiple columns

![Screenshot 2023-05-07 at 6.43.20 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%206.43.20%20PM.png)

#### 4. Different types of data are stored in the same column

e.g. numbers and text are stored in the same volumn

#### 5. Missing values

Be careful: These can sometimes be coded as: 

* Text
  * "missing" or "unknown"
* Numeric
  * 0 or 9999

In reality it should be left blank

#### 6. Variables are stored in both rows and columns

The upper part is wrong - the bottom is correct

![Screenshot 2023-05-07 at 6.50.05 PM.png](Image%20Bank/Screenshot%202023-05-07%20at%206.50.05%20PM.png)

#### 7. Other common things to remove/fix:

* No colors
* No generic headers for multiple columns
* Unnecessary white space
* Combine multiple tables into one and communicate difference with a new variable
* Combine multiple excel sheets into one and communicate difference with a new variable
* Short and concise column names
  * Too short and people will not know the meaning
  * Long column names should be avoided and information should be coded into the variable (no legend or explanations in variable names)
    * e.g. Male, Female, Other (1,2,3) should be coded as text that can later be converted to categorical/factor during data analysis for R
    * Other languages it may be fine to keep it as number but then include variable description labels 

## Tidying Data is always worth it
