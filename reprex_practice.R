install.packages("reprex")
library(reprex)
library(palmerpenguins)
library(tidyverse)
library(datapasta)

ggplot(penguins,
       aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()

# Create a reprex to reproduce error
# create a min dataset to work with 

datapasta::df_paste(head(penguins, 5)[, c("bill_length_mm", y = "flipper_length_mm")])

## here is my reprex
my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)


ggplot(my_data),
       aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()


