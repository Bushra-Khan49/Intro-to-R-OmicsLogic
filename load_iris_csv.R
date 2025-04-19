# Load tidyverse library for working with data
library(tidyverse)

# Read iris data directly from GitHub raw link
iris_data <- read_csv("https://raw.githubusercontent.com/Bushra-Khan49/Intro-to-R-OmicsLogic/main/iris.csv")

# View the first few rows
head(iris_data)

# Check the structure
str(iris_data)

# Basic summary
summary(iris_data)
