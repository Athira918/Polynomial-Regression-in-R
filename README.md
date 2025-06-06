#Polynomial Regression in R
This script demonstrates how to apply polynomial regression to model non-linear relationships between variables. First, the data is imported and the necessary columns are selected. A simple linear regression model is built to serve as a baseline. Then, additional polynomial features (squared, cubed, etc.) are created to capture the curve in the data. A new regression model is fitted using these polynomial terms. The results of both models are visualized using ggplot2, clearly showing the difference in how each fits the data. Finally, predictions are made using both models for comparison.

Steps:

Load and prepare the data

Fit a simple linear regression model

Create polynomial features (e.g., Level², Level³, Level⁴)

Fit the polynomial regression model

Visualize both models using ggplot2

Predict values using both models
