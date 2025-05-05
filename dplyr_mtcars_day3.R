# Load Library
Library(dplyr)

head(mtcars)

# Adding car names as column
mtcars <- mtcars %>%
  mutate(car_name = rownames(mtcars))

# 1. Filtering cars with mpg > 20
high_mpg_cars <- mtcars %>%
  filter(mpg > 20)
print("cars with MPG > 20 :")
print(high_mpg_cars)

# 2. Mutating by creating column 'km_per_litre' from mpg
mtcars <- mtcars %>%
  mutate(km_per_litre = mpg * 0.425144)
head(mtcars)

# 3. Arranging / Sorting cars by descending horsepower
sorted_by_hp <- mtcars %>%
  arrange(desc(hp))
print("Cars sorted by horsepower :")
print(sorted_by_hp)

# 4. Grouping and Summarising to get Average milage by cylinder group
mpg_by_cyl <- mtcars %>%
  group_by(cyl) %>%
  summarize(avg_mpg = mean(mpg), count = n())
print ("Average MPG by Cylinders :")
print(mpg_by_cyl)

# 6. Combining by no. of filters and weight 
six_cyl_sorted <- mtcars %>%
  filter(cyl == 6) %>%
  arrange(wt)
print("6-cylinder cars sorted by weight :")
print(six_cyl_sorted)
