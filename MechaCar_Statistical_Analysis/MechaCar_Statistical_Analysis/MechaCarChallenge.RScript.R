library(dplyr)

my_csv <- read.csv("MechaCar_mpg.csv")

head(my_csv)

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data=my_csv)

summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data=my_csv))

sus_csv <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

head(sus_csv)

total_summary <- sus_csv %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

head(total_summary)

lot_summary <- sus_csv %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

head(lot_summary)