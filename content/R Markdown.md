---
title: R Markdown
date created: "Wednesday, April 5th 2023, 12:51:24 am"
date modified: "Thursday, May 25th 2023, 1:25:20 am"
---

Wrap long lines in PDF output

Install: 'formatR'

````
```{r, echo = F}
library(knitr)
opts_chunk$set(tidy.opts=list(width.cutoff=80),tidy=TRUE)
```
````
