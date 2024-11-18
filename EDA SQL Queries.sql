# Basic Analysis
# Total Number of Reviews
SELECT COUNT(*) AS Total_Reviews
FROM critic_reviews;

# Unique Publications
SELECT COUNT(DISTINCT publicationName) AS Unique_Publications
FROM critic_reviews;

# Unique Critics
SELECT COUNT(DISTINCT criticName) AS Unique_Critics
FROM critic_reviews;

# Rotten Reviews
SELECT COUNT(*) AS Rotten_Reviews
FROM critic_reviews
WHERE isRotten = 'TRUE';

# Fresh Reviews
SELECT COUNT(*) AS Fresh_Reviews
FROM critic_reviews
WHERE isFresh = 'TRUE';

# Advanced Analysis
# General Review Statistics: Provides a high-level overview of the dataset, including total reviews, unique publications, and unique critics.
SELECT COUNT(*) AS Total_Reviews,
       COUNT(DISTINCT publicationName) AS Unique_Publications,
       COUNT(DISTINCT criticName) AS Unique_Critics
FROM critic_reviews;

# Fresh vs. Rotten Reviews: Highlights the balance of fresh versus rotten reviews to understand the overall sentiment.
SELECT 
    SUM(isRotten = 'True') AS Rotten_Reviews, 
    SUM(isFresh = 'True') AS Fresh_Reviews
FROM critic_reviews;

# Distribution by Publication: Summarizes the distribution of fresh and rotten reviews across top publications to identify trends and biases in their reviewing behavior.
SELECT 
    publicationName, 
    SUM(isFresh = 'True') AS Fresh_Reviews, 
    SUM(isRotten = 'True') AS Rotten_Reviews, 
    COUNT(*) AS Total_Reviews
FROM critic_reviews
GROUP BY publicationName
ORDER BY Total_Reviews DESC
LIMIT 10;

# Sentiment and Freshness Relationship: Examines the correlation between sentiment (positive/negative) and freshness (fresh/rotten).
SELECT scoreSentiment, isFresh, COUNT(*) AS Total_Reviews
FROM critic_reviews
GROUP BY scoreSentiment, isFresh
ORDER BY total_reviews DESC;

# Top 5 Publications by Review Count: Identifies the most active publications contributing reviews in the dataset.
SELECT publicationName, COUNT(*) as Total_Reviews
FROM critic_reviews
GROUP BY publicationName
ORDER BY Total_Reviews DESC
LIMIT 5;

# Average Score by Publication: Highlights the publications with the highest average scores to identify potential leniency or strictness.
SELECT publicationName, ROUND(AVG(originalScore),2) AS AVG_Score
FROM critic_reviews
GROUP BY publicationName
ORDER BY AVG_Score DESC
LIMIT 10;

# Sentiment Analysis by Publication: Analyzes how publications distribute positive and negative reviews to identify biases. 
SELECT 
    publicationName, 
    COUNT(CASE WHEN scoreSentiment = 'POSITIVE' THEN 1 END) AS Positive_Reviews,
    COUNT(CASE WHEN scoreSentiment = 'NEGATIVE' THEN 1 END) AS Negative_Reviews,
    COUNT(*) AS Total_Reviews
FROM critic_reviews
GROUP BY publicationName
ORDER BY Total_Reviews DESC
LIMIT 10;

# Consistency of Critics' Ratings: Identifies critics who consistently give the same score, highlighting potential bias.
SELECT criticName, COUNT(DISTINCT originalScore) AS Unique_Scores, COUNT(*) AS Total_Reviews
FROM critic_reviews
GROUP BY criticName
ORDER BY Total_Reviews DESC
LIMIT 10;





