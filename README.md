# MechaCar_Statistical_Analysis
## Purpose 
The purpose of this project is to review the production data of AutosRUs’ newest prototype, the MechaCar for insights that may help the manufacturing team using R and Statistics.

## Result
### Linear Regression to Predict MPG
Linear regression was performed on the data to predict the mpg of MechaCar prototypes using several variables such as vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD.

![D1](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/D1.PNG)
|:--:|
|Fig 1. Linear model to predict mpg of Mechacar prototypes|

It is evident from our linear regression model(Fig 1.) that the r-squared value is 0.71, which means that roughly 70% of the variablilty of our dependent variable (mpg predictions) is explained using this linear model. In addition, the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is NOT zero.

### Summary Statistics on Suspension Coils
. A high variance indicates that the data points are very spread out from the mean, and from one another.
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch
