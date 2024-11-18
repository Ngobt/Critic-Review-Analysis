# **Critic Reviews Analysis**

## **Overview**
This project analyzes a dataset of movie critic reviews to uncover insights into sentiment trends, influential critics, and publication behavior. By leveraging Python for data processing, MySQL for querying, and Power BI for visualization, the project delivers actionable insights into how movies are reviewed across time and by different critics and publications.

---
![image alt](Preview.PNG)
---

## **Objectives**
The primary goals of this project are:
1. **Sentiment Analysis**:
   - Analyze the proportion of positive (`Fresh`) vs. negative (`Rotten`) reviews and identify trends over time.
2. **Publication and Critic Insights**:
   - Profile publications and critics to identify those who are most influential, lenient, or harsh.
3. **Data Patterns**:
   - Explore how review sentiments align with `originalScore` and uncover scoring patterns.
4. **Interactive Reporting**:
   - Build an interactive dashboard to allow dynamic exploration of insights by stakeholders.

---

## **User Stories**
### **Sentiment Trends and Insights**
1. **As a Data Analyst**,  
   I want to analyze trends in positive (`Fresh`) vs. negative (`Rotten`) reviews,  
   So that I can identify overall sentiment patterns across critics and publications.

2. **As a Marketing Manager**,  
   I want to profile publications based on their sentiment tendencies,  
   So that I can target the right outlets for promotional efforts.

### **Critic Profiles**
3. **As a Film Enthusiast**,  
   I want to explore which critics are most influential (`isTopCritic`) and consistent in their ratings,  
   So that I can prioritize their opinions when choosing movies to watch.

4. **As a Data Scientist**,  
   I want to examine how critic behaviors vary across positive and negative sentiments,  
   So that I can uncover potential reviewer biases or patterns.

---

## **Dataset**
### **Source**:
- Dataset: `https://www.kaggle.com/datasets/bwandowando/rotten-tomatoesall-time-best-super-hero-movies`
- Key Columns:
  - `reviewId`: Unique identifier for each review.
  - `creationDate`: Date the review was written.
  - `criticName`: Name of the critic.
  - `reviewState`: Sentiment (`Fresh` or `Rotten`).
  - `isTopCritic`: Whether the critic is a top critic.
  - `quote`: Text of the review.
  - `originalScore`: Numerical score assigned by the critic.
  - `movieId`: Unique identifier for the movie.

### **Data Challenges**:
- Missing values in fields like `quote` and `originalScore`.
- Handling and normalizing boolean columns (`isFresh`, `isRotten`).
- Cleaning inconsistent formats for `creationDate`.

---

## **Tools Used**
### **Python**:
- Handled data cleaning and preprocessing using `pandas`, including handling missing values, transforming boolean columns, and normalizing text.
- Processed and transformed `originalScore` to convert ratings (e.g., fractions, letter grades) into a consistent numeric format.
  
### **SQL (MySQL Workbench)**:
- Conducted exploratory data analysis with SQL queries, including:
  - Identifying sentiment proportions (Fresh vs. Rotten).
  - Analyzing average scores by publication.
  - Highlighting influential critics and publications through review counts.

### **Power BI**:
- Built an interactive dashboard to visualize key insights:
  - **Clustered Bar Chart**: Fresh vs. Rotten reviews distribution.
  - **Sentiment Analysis by Publication**: Positive vs. negative reviews by publication.
  - **Overview Cards**: High-level stats like total reviews, unique critics, and unique publications.
  - Enabled slicers and filters for dynamic data exploration.

---

## **Steps to Reproduce**
1. **Data Cleaning**:
   - Load the dataset in Python.
   - Clean missing values, standardize date formats, and transform boolean fields.
   - Export the cleaned dataset to a CSV file for further analysis.

2. **Exploratory Data Analysis (EDA)**:
   - Import the cleaned data into MySQL Workbench.
   - Execute SQL queries to uncover insights:
     - Trends in sentiment and freshness distribution.
     - Average scores by publication.
     - Critics with diverse or consistent review patterns.

3. **Dashboard Creation**:
   - Import the cleaned dataset into Power BI.
   - Create visuals (e.g., bar charts, pie charts, and card summaries) to highlight findings.
   - Add slicers and filters for interactivity.

---

## **Visualizations**
1. **Overview Dashboard**:
   - Card visuals showing total reviews, unique publications, and critics.
2. **Fresh vs. Rotten Reviews**:
   - Clustered bar chart comparing the number of fresh and rotten reviews.
3. **Sentiment Analysis by Publication**:
   - Stacked bar chart showing positive vs. negative reviews across top publications.
4. **Average Scores by Publication**:
   - Horizontal bar chart identifying lenient and strict publications.

---

## **Conclusion**
This project highlights my ability to manage the entire data lifecycle:
- Cleaning and transforming raw data in Python.
- Analyzing data with complex SQL queries in MySQL Workbench.
- Building an interactive and insightful Power BI dashboard for stakeholders.

It demonstrates a strong understanding of data analysis workflows, the ability to derive actionable insights, and proficiency in communicating findings visually. 

---

## **Contact**
For questions or feedback, feel free to reach out:
- GitHub: [ngobt.github.io](https://ngobt.github.io)
- LinkedIn: [Brandon Ngo](https://www.linkedin.com/in/brandonngo24)

---

This version reflects the work we've discussed, while emphasizing your technical skills and impact. Let me know if you’d like further edits!
