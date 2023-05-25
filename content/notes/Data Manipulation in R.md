---
---

## Subsetting the data

#### Based on column value

*Base R:* 

````R
# The `%in%` operator is a binary operator in R that returns a logical vector indicating whether each element of the first vector is found in the second vector or not. In this case, it is used to check whether each value of the `Rating` column of `countries_df` is present in the vector `c("BBB+", "BBB-")`.

bbbrating_countries <- countries_df$Country[countries_df$Rating %in% c("BBB+", "BBB-")] 

# Using the grepl regex method
bbbrating_countries <- bond_ratings_df$Country[grepl("BBB[+-]", bond_ratings_df$Rating)]
````

The second method here uses [Regular Expression](Regular%20Expression.md)

#### In a vector

*Base R:*

````R
# vector of column names to select 
col_names <- c("col1", "col3", "col5") # select columns in the data frame that match the names in the vector 
df_subset <- df[, names(df) %in% col_names]
````

*Tidyverse*:

````R

# vector of column names to select 
col_names <- c("col1", "col3", "col5") # select columns in the data frame that match the names in the vector 
df_subset <- df %>% select(names(.) %in% col_names)
````

Find most common value in a column based on value from another column

````R
names(which.max(table(weo_clean$Subject.Descriptor[weo_clean$WEO.Subject.Code == "GGXCNL_NGDP"])))
````

````R
as.character(weo_clean$Subject.Descriptor[weo_clean$WEO.Subject.Code == "GGXCNL_NGDP"][1])
````

## Drop NA

````R
library(tidyverse)
df %>% drop_na(if_all(everything(), is.na))

````
