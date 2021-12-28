# MechaCar_Statistical_Analysis
## Purpose 
The purpose of this project is to review the production data of AutosRUs’ newest prototype, the MechaCar for insights that may help the manufacturing team using R and Statistics.

## Result
### Linear Regression to Predict MPG
Linear regression was performed on the data to predict the mpg of MechaCar prototypes using several variables such as vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD.

![D1](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/D1.PNG)
|:--:|
|Fig 1. Linear model to predict mpg of Mechacar prototypes|

It is evident from our linear regression model *(Fig 1.)* that the r-squared value is 0.71, which means that roughly 70% of the variablilty of our dependent variable (mpg predictions) is explained using this linear model. In addition, the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

### Summary Statistics on Suspension Coils
- RScript was written to create the **total_summary** dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column *(Fig. 2).* 
 
![total_summary](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/total_summary.PNG)
|:--:|
|Fig 2. total_summary dataframe showing the mean, median, variance, and standard deviation|

- **lot_summary** dataframe was created using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column *(Fig. 3).*

![lot_summary](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/lot_summary.PNG)
|:--:|
|Fig 3. lot_summary dataframe showing the mean, median, variance, and standard deviation|

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch and it is evident from the total_summary dataframe the variance has not exceeded the above value. We can see that Lot3 has a very high variance of 170.29. The high variance indicates that the data points are very spread out from the mean, and from one another. We can infer that the higher variance of the total could be because of the higher variance of Lot3. The  production troubles could be from Lot3 prototype.

### T-Tests on Suspension Coils
- RScript was written using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The interpretation had a p-value of 0.06 (higher than the significance level of 0.05) which means that the null hypothesis that the true mean is equal to 1500 cannot be rejected.

- In addition, three more scripts were added using the t.test() function and subset() argument to determine if the PSI for each manufacturing lot was statistically different from the population mean of 1,500 pounds per square inch.

![ttest_1](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/ttest_1.PNG)
|:--:|
|Fig 4. T-test of Lot1|

Lot1 has a p-value of 1 which indicates that there is no statistical difference between the observed sample mean and presumed population mean of 1500.

![ttest_2](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/ttest_2.PNG)
|:--:|
|Fig 5. T-test of Lot2|

Lot2 has a p-value of 0.61 which is higher than the significance level of 0.05 indicating that we cannot reject the null hypothesis.

![ttest_3](https://github.com/chinzjay/MechaCar_Statistical_Analysis/blob/main/ttest_3.PNG)
|:--:|
|Fig 6. T-test of Lot3|

Lot3 has a p-value of 0.04 which is lower than the significance level indicating that we can reject our null hypothesis that there is no statistical difference between the observed sample mean and presumed population mean of 1500.

### Study Design: MechaCar vs Competition
A statistical study can be designed to compare the performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
The following data can be included in the study to quantify how the MechaCar performs against the competition.
- Specifications data and Performance data on competitive models with similar features.
- The following metrics can be tested for the study model.
  - Cost of the car
  - Fuel Efficiency
  - Maintenance Cost
  - Safety rating
  - Resale value
  - Power of engine
  - Cargo volume
- **Null Hypothesis** : The performance of the MechaCar vehicles is higher than the performance of competitor vehicles from other manufacturers.
- **Alternative Hypothesis** : The performance of the MechaCar vehicles is NOT higher than the performance of competitor vehicles from other manufacturers.
- Multiple Linear Regression can be performed to test the hypothesis since the data will have multiple independent variables.
- The statistical test can be performed on data that has been collected in a statistically valid manner – through observations made using probability sampling methods. The sample size has to be large enough to approximate the true distribution of the population being studied.
