#Creating a Perfect graphic in R
#See what we are working with
head(mtcars)
mtcars

#making the graph 
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "steelblue", color = "black") +
  labs(title = "Number of Cars by Cylinder Count (mtcars dataset)",
       x = "Number of Cylinders",
       y = "Number of Cars") +
  scale_y_continuous(breaks = seq(0, 15, by = 1),  
                     labels = function(x) paste0(x, " cars")) +  
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))  
