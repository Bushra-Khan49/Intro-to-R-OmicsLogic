# Load library
library(tidyverse)

# Load dataset
iris_data <- read_csv("https://raw.githubusercontent.com/Bushra-Khan49/Intro-to-R-OmicsLogic/refs/heads/main/iris.csv")

# checking structure and summary
str(iris_data)
summary(iris_data)

# Counting species
iris_data %>%
  count(Species)

# Calculating mean
iris_data %>%
  group_by(Species) %>%
  summarise(across(where(is.numeric), mean, na.rm = TRUE))

# Boxplot - Sepal Length
ggplot(iris_data, aes(x = Species, y = Petal.Width, color = Species)) + 
  geom_boxplot() +
  labs(title = "Petals Length Distribution by Species") +
  theme_minimal()

# Scatter plot - Petal Distribution
ggplot(iris_data, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Petal Length vs Width") +
  theme_minimal()


