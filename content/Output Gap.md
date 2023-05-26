---
---

## Output Gap

* Positive output gap occurs when real GDP is greater than potential GDP in an economy
* This could be due to pushing resource use to the maximum
  * Labor working overtime
  * Excessive use of capital

## Estimating it using a HP filter

The Hodrick-Prescott filter can be implemented in R using the "mFilter" package. Here is a general step-by-step process to estimate the output gap.

1. **Install and Load the mFilter package:**
   You can install the package using `install.packages("mFilter")` command and then load it using `library(mFilter)`.

1. **Import Your Data:**
   Assume that your GDP data is stored in a dataframe named "data" and the GDP column is named "GDP". If it's in a different format, you might need to adjust the following commands accordingly.

1. **Apply the HP Filter:**
   Here is how you can apply the HP filter to your data:
   
   ````R
   hp <- hpfilter(data$GDP, freq = 1600)
   ````
   
   The "freq" argument in the function is the smoothness parameter. For quarterly data, it's usually set at 1600.

1. **Calculate the Output Gap:**
   The output gap is the difference between the real GDP and the trend GDP (obtained from HP filter). You can calculate it as follows:
   
   ````R
   data$output_gap <- hp$cycle
   ````
   
   Here, hp$cycle represents the cyclical component of the time series which is essentially the output gap. 

1. **Visualizing the Output Gap:**
   You can plot the output gap using the following command:
   
   ````R
   plot.ts(data$output_gap, main = "Output Gap", ylab = "GDP")
   ````

This code will estimate the output gap in the context of the HP filter, providing a measure of the deviation of the economy from its potential level of output.
