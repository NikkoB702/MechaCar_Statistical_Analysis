# MechaCar_Statistical_Analysis

# Summary

AutosRUs’ is currently having issues with a new prototype model “MechaCar”, as it enters production. Upper management has called on Jeremy and the data analytics team to review production data and formulate insights that might aid the manufacturing team in correcting these problems. The following analysis will include the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Part 1: Linear Regression to Predict MPG

![Part_1_final](https://user-images.githubusercontent.com/80132877/209588559-d84e8f18-e0a1-4540-8f46-02e9fc55b3f2.jpg)

* Which variable/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Two variables provide us with a non-random amount of variance. The p-values of vehicle length (2.603-12) and ground clearance (5.21e-08) indicate that there are significant statistical results within these variables. 

* Is the slope of the linear model considered to be zero?

When we observe the significance level (p-value) of our data we can conclude there is sufficient evidence to reject the null hypothesis and the slope of the model cannot be zero. For this to not be the case, we would need our significance level to be below 0.05.

* Does this linear model predict mpg of MechaCar prototypes effectively? 

The multiple R-squared value is sitting at roughly 72% predictably. However, the adjusted R-Squared value is closer to 69%. We can say with confidence that our model is effective at correctly predicting the MPG of the MechaCar prototype. 

## Part 2: Summary Statistics on Suspension Coils:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? 

Looking at the variance for overall suspension coils we note that the 62.29356 pounds per square inch is well below the manufacturing standards of 100 pounds per square inch.

![Part_2_overall](https://user-images.githubusercontent.com/80132877/209588573-7f4bceeb-c397-4873-a284-c4ba2951116c.jpg)

If we separate the lots, we can identify that Lot1 (0.980) and Lot2 (7.47) are well below the maximum pounds per square inch. However, Lot3 (170) has exceeded the limit by 70 pounds per square inch.

![Part_2_individual](https://user-images.githubusercontent.com/80132877/209588581-d527ef2b-1403-485e-899d-9e2309033fd0.jpg)

## Part 3: T-Tests on Suspension Coils:

Our first image shows a conducted t-test on the suspension coils of all three lots combined. We’re looking for a statistical difference between the mean of the dataset with a presumed population mean of 1500. 

![sample_data_T_test](https://user-images.githubusercontent.com/80132877/209588609-7e5a6d40-9f67-4cb5-8477-c11e923db528.png)

Our confidence level across the board is 95%, which means we can be certain that 95% of our analysis contains the true mean of 1500. Our p-value is 0.6172, which means we can fail to reject the null hypothesis and agree that the mean of overall lots is statistically like the presumed mean. 

Our next three images show the same t-test ran on individual lots. 

* Lot 1:
Our p-value is at 0.4765, lower than the overall score, but fails to meet our 0.05 criteria. We must fail to reject the null hypothesis and agree the mean is similar.

![sample_1_T_test](https://user-images.githubusercontent.com/80132877/209588616-6bb18edb-17c7-4e8d-a0a9-04813670ea52.png)

* Lot 2:
Our p-value is 0.893. We must fail to reject the null hypothesis and agree the mean is similar.

![sample_2_T_test](https://user-images.githubusercontent.com/80132877/209588623-a0334dfc-ef76-46ab-92b9-c791874871d6.png)

* Lot 3:
Our p-value is 0.3669. We must fail to reject the null hypothesis and agree the mean is similar.

![sample_3_T_test](https://user-images.githubusercontent.com/80132877/209588634-1e3abd13-fac8-4486-be77-5580a2817633.png)

## Part 4: Design a Study Comparing the MechaCar to the Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.

* What metric or metrics are you going to test?
Some key metrics in further studies could include cost, city or highway fuel efficiency, horsepower, carbon footprint, resale value, and safety ratings.

* What is the null hypothesis or alternative hypothesis?
Null example: MechaCar is the most efficient vehicle in its class based on metrics.
Alternative example: MechaCar is not the most efficient vehicle in its class based on metrics.

* What statistical test would you use to test the hypothesis? And why?
We would use emissions tests as our independent variable and a multiple linear regression model that correlates MechaCar with its highest competitors. From this test we can determine metrics to support or disagree with our claims.

* What data is needed to run the statistical test?
Aside from our independent variable we could include city or highway fuel efficiency, horsepower and carbon footprint as other variables to help aid in our discoveries. 
