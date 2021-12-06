#Deliverable 1: Linear Regression to Predict MPG
#Use the library() function to load the dplyr package
library(dplyr)
#Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_mpg<-read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)
#Perform linear regression using the lm() function
lm(formula=mpg~vehicle_length+ vehicle_weight+ spoiler_angle+ ground_clearance+ AWD, data=mechacar_mpg)
#Use summary() function to determine the p-value and the r-squared value for the linear regression model
summary(lm(formula=mpg~vehicle_length+ vehicle_weight+ spoiler_angle+ ground_clearance+ AWD, data=mechacar_mpg))


#Deliverable 2: Create Visualizations for the Trip Analysis
#import and read in the Suspension_Coil.csv file as a table
suspension_coil<-read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
#total_summary dataframe to get mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary<-suspension_coil %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
# lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary<-suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')


#Deliverable 3: T-Tests on Suspension Coils 
#determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI, mu=1500)
#Using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
ttest_lot1<-t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
ttest_lot2<-t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
ttest_lot3<-t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)