# Load library
library(tidyverse)

# Load dataset
iris_data <- read_csv("https://raw.githubusercontent.com/Bushra-Khan49/Intro-to-R-OmicsLogic/refs/heads/main/iris.csv")

# checking structure and summary
str(iris_data)
summary(iris_data)

# Counting variety
iris_data %>%
  count(variety)

# Calculating mean
iris_data %>%
  group_by(variety) %>%
  summarise(across(where(is.numeric), ~mean(.x, na.rm = TRUE)))

# Boxplot - Sepal Length
ggplot(iris_data, aes(x = variety, y = sepal.length, fill = variety)) + 
  geom_boxplot() +
  labs(title = "Sepal Length by Variety", x = "Variety", y = "Sepal Length") +
  theme_minimal()

# Scatter plot - Petal Distribution
ggplot(iris_data, aes(x = petal.length, y = petal.width, color = variety)) +
  geom_point(size = 3) +
  labs(title = "Petal Dimensions by Variety", x = "Petal Length", y = "Petal Width") +
  theme_minimal()


