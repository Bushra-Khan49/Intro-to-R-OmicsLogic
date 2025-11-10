# Iris Data Exploration using tidyverse

**Author:** Bushra Khan  
**Dataset:** [Iris Dataset (CSV on GitHub)](https://raw.githubusercontent.com/Bushra-Khan49/Intro-to-R-OmicsLogic/refs/heads/main/iris.csv)

---

## Introduction

This report demonstrates exploratory data analysis (EDA) of the **Iris dataset** using R and the **tidyverse** library.  
The analysis includes:
1. Loading and inspecting the dataset  
2. Summarizing numerical features by species  
3. Counting the number of samples per variety  
4. Visualizing data distributions and relationships with **ggplot2**

---

## Load Libraries and Dataset

```r
# Load library
library(tidyverse)

# Load dataset
iris_data <- read_csv("https://raw.githubusercontent.com/Bushra-Khan49/Intro-to-R-OmicsLogic/refs/heads/main/iris.csv")

# Checking structure and summary
str(iris_data)
summary(iris_data)
```
##  Data Exploration and Summary

## 1.Count of Flower Varieties
```r
iris_data %>%
  count(variety)
  ```
## 2.Mean of Numeric Columns by Variety
```r
iris_data %>%
  group_by(variety) %>%
  summarise(across(where(is.numeric), ~mean(.x, na.rm = TRUE)))
```

## Data Visualization

## 3.Boxplot — Sepal Length by Variety
```r
ggplot(iris_data, aes(x = variety, y = sepal.length, fill = variety)) + 
  geom_boxplot() +
  labs(title = "Sepal Length by Variety", x = "Variety", y = "Sepal Length") +
  theme_minimal()
```
## 4.Scatter Plot — Petal Length vs Petal Width
```r
ggplot(iris_data, aes(x = petal.length, y = petal.width, color = variety)) +
  geom_point(size = 3) +
  labs(title = "Petal Dimensions by Variety", x = "Petal Length", y = "Petal Width") +
  theme_minimal()
```
## 5.Scatter Plot — Sepal Length vs Sepal Width
```r
library(ggplot2)
ggplot(iris_data, aes(x = sepal.length, y = sepal.width, color = variety)) +
  geom_point(size = 3) +
  labs(title = "Sepal Dimensions by Variety", x = "Sepal Length", y = "Sepal Width") +
  theme_minimal()
```

---

# Conclusion

Through this analysis, I :
- Explored the structure and summary of the Iris dataset
- Calculated average values for numerical features per flower variety
-  Visualized relationships between petal and sepal measurements

These basic data exploration steps are essential for understanding dataset characteristics before applying advanced bioinformatics or machine learning models.

---
