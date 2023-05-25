---
---

library(ggplot2)
cor_matrix \<- cor(PriceData\[,c("metalc", "fuelc", "crudeoilc", "naturalgasc", "coalc", "fuell", "crudeoill", "naturalgasl", "coall")])
ggplot(data = melt(cor_matrix), aes(x=Var1, y=Var2, fill=value)) + 
geom_tile() + 
\#scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0, limit = c(-1,1), space = "Lab", name="Correlation") + 
theme_minimal() + 
theme(axis.text.x = element_text(angle = 45, vjust = 1, 
size = 12, hjust = 1)) +
coord_fixed()
