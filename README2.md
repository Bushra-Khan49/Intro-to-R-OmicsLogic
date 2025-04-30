# Iris Dataset Analysis in R

This mini-project explores the classic **Iris dataset** using R and `tidyverse`.

## Files in This Repo

- `iris.csv`: Raw dataset (3 species, 150 samples)
- `vectors_basics.R`: Basic R operations with vectors
- `iris_analysis_day10.R`: Full pipeline — data loading, summary, and visualizations

## Skills Practiced

- Loading data with `read_csv()`
- Summarizing using `group_by()` and `summarise()`
- Visualizing with `ggplot2`:
  - Boxplot of Sepal Length
  - Scatter plot of Petal Length vs Petal Width

## Sample Output

- **Sepal Length Boxplot** grouped by `variety`
- ![iris_dataset_results1](https://github.com/user-attachments/assets/b97b3a0b-243d-468c-81eb-706dbe43bb98)
# Visualization & Interpretation 
  - This Boxplot shows how petal width varies across the three iris varieties.
  - **Observations:** Setosa has the smallest petal width with minimal spread. Verginica displays highest median petal width and widest range.
  - **Interpretations:** Petal width is a strong distinguishing feature - Sesota stands apart clearly, while some overlap exists between Versicolor and Virginica.

  
- **Petal Dimensions Scatterplot** colored by 'species'
- ![iris_dataset_results2](https://github.com/user-attachments/assets/557eb848-dfab-48b8-be24-ba7c59f23e6e)
  - This Scatterplot shows the relationship between Petal Length and Petal Width across species.
  - **Observations:** Setosa points are clustered in the bottom-left, showing short and narrow petals. Virgivnica lies in the top-right with large petals, and Versicolor falls in between.
  - **Interpretations:** There's a clear linear relantionship between within each species. Petal dimensions strongly correlate with variety and are usefful for classification.

  
- **Sepal Length vs Sepal Width scatterplot** grouped by `variety`
- ![iris_dataset_results3](https://github.com/user-attachments/assets/107b7446-1672-425b-83ff-03611c1fbb5c)
    - This Scatterplot compares sepal length and width across iris types.
    - **Observations:** Setosa again clusters distinctly with shorter, wider sepals. Versicolor and Verginica show overlap, though Verginica tends towards longer sepals.
    - **Interpretations:** Sepal dimensions help isolate Sesota, but are less reliable for distinguishing Versicolor and Verginica alone.
 
  
---

Part of my R learning journey during my project work — more analyses to come!
