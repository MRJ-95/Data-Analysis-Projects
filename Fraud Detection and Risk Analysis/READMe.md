Advanced Project: Payment Fraud Detection & Risk Scoring System
This project will demonstrate payments analytics, fraud detection, experimentation, and model evaluation, aligning well with Netflix’s Payments Data Science role.

Dataset:
Use the "Synthetic Financial Fraud Dataset" from Kaggle.

These datasets contain transaction details, user information, and fraud labels, making them ideal for detecting fraudulent payments.

Execution Steps:
1. Data Preprocessing & Feature Engineering
Clean the dataset: Handle missing values, encode categorical variables, and normalize numeric features.
Feature engineering:
Create transaction frequency and spending patterns per user.
Extract device, location, and transaction time features for anomaly detection.
2. Fraud Detection Model
Train supervised models (XGBoost, Random Forest, Logistic Regression) to classify fraud vs. legitimate transactions.
Use unsupervised anomaly detection (Isolation Forest, Autoencoders) for zero-day frauds.
Evaluate using AUC-ROC, Precision-Recall, and F1-score to balance fraud detection and false positives.
3. Risk Scoring System
Assign a fraud risk score (0–100) to each transaction based on model predictions.
Categorize users into Low, Medium, and High risk based on transaction behaviors.
Generate explainable AI outputs (e.g., SHAP values) to interpret fraud patterns.
4. A/B Testing on Fraud Prevention Strategies
Implement an experiment to evaluate fraud detection model effectiveness:
Control Group: Standard fraud detection threshold.
Test Group: Dynamic risk-based threshold (adjusted per transaction type & user history).
Use causal inference (Difference-in-Differences, Uplift Modeling) to measure the impact on fraud prevention and false positive rates.
5. Business Recommendations
Optimize fraud thresholds to reduce false positives while maximizing fraud detection.
Collaborate with payment teams (hypothetically) to suggest adaptive fraud prevention strategies.
Visualize findings using PowerBI/Tableau and document insights for decision-makers.
