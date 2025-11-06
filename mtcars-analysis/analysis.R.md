
# mtcars Data Exploration Project

This project demonstrates how to perform basic data manipulation using the **dplyr** package in R, applied to the well-known `mtcars` dataset.  
The dataset contains fuel consumption and performance characteristics of 32 cars, making it ideal for practicing data wrangling techniques.

---

## Introduction
This report demonstrates basic data manipulation using the **dplyr** package in R with the built-in `mtcars` dataset.

In this analysis, we will:
1. Add a car name column  
2. Filter cars by mileage (MPG > 20)  
3. Convert fuel efficiency from MPG to KM/L  
4. Sort cars by horsepower  
5. Group data by cylinder count  
6. Filter and arrange 6-cylinder cars by weight  

All steps are performed inside **one single code block** for simplicity and clarity.

---
## 🚗 Step 1: Add Car Names as a Column
```mtcars <- mtcars %>%
  mutate(car_name = rownames(mtcars))
```
## ✅ Step 2: Filter Cars with MPG > 20
```high_mpg_cars <- mtcars %>%
  filter(mpg > 20)
```
```
print("Cars with MPG > 20:")
print(high_mpg_cars)
```
## 🔁 Step 3: Convert MPG to KM/L
```Conversion factor: 1 MPG = 0.425144 KM/L
mtcars <- mtcars %>%
  mutate(km_per_litre = mpg * 0.425144)
```
```
head(mtcars)
```
## 📉 Step 4: Sort Cars by Horsepower (Descending Order)
``` sorted_by_hp <- mtcars %>%
  arrange(desc(hp))
```
```
print("Cars sorted by horsepower:")
print(sorted_by_hp)
```
## 📊 Step 5: Group by Cylinder Count & Summarize Average MPG
```mpg_by_cyl <- mtcars %>%
  group_by(cyl) %>%
  summarize(avg_mpg = mean(mpg), count = n())
```
```
print("Average MPG by Cylinders:")
print(mpg_by_cyl)
```
## 🏋️ Step 6: Filter 6-Cylinder Cars and Sort by Weight
``` six_cyl_sorted <- mtcars %>%
  filter(cyl == 6) %>%
  arrange(wt)
```
```
print("6-cylinder cars sorted by weight:")
print(six_cyl_sorted)
```
