# store a value
x <- 2
x
x + 5

# store a vector of values
y <- c("cat", "dog", "fish")
y

# create an error message
z
y + x

# load a package
library(tidyverse)

# read in data
penguins <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-07-28/penguins.csv')

# explore data
glimpse(penguins)
View(penguins)
summary(penguins)

# summarise the data
penguins %>%
  na.omit() %>%
  group_by(species) %>%
  summarise(across(starts_with("bill"), 
                   list(mean = mean, sd = sd)))

penguins %>%
  group_by(island) %>%
  count(species)
