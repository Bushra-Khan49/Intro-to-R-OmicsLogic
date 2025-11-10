---

# Aim: Load and Explore Iris Dataset in R

---

##  Introduction

This markdown file demonstrates how to **load**, **inspect**, and **understand** the structure of the classic `iris` dataset in R.  
We will use the `tidyverse` package to perform basic data loading, exploration, and summarization.

---

## Step 1: Load Required Library

```r
# Load required package
library(tidyverse)
```
## Step 2: Load the Dataset
```r
# Load dataset from GitHub
iris_data <- read_csv("https://raw.githubusercontent.com/Bushra-Khan49/Intro-to-R-OmicsLogic/refs/heads/main/Iris_dataset_analysis/iris.csv")

# View the first few rows
head(iris_data)
```
## Step 3: Inspect Structure and Summary
```r
# Check structure
str(iris_data)

# Generate summary
summary(iris_data)
```
## Step 4: Basic Data Exploration
### Count the number of observations for each species
```r
iris_data %>%
  count(variety)
```
### Calculate mean of all numeric variables grouped by variety
```r
iris_data %>%
  group_by(variety) %>%
  summarise(across(where(is.numeric), ~mean(.x, na.rm = TRUE)))
```

---

# Summary

This analysis successfully:
- Loaded the Iris dataset from GitHub
- Explored its structure and key summary statistics
- Counted and compared entries by species

This serves as a foundational example for performing basic data exploration in R using tidyverse.

⸻
