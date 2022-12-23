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

sample_data <- sus_csv %>% sample_n(50)

t.test((sample_data$PSI), mu=1500)

sample_1 <- sus_csv %>% subset(Manufacturing_Lot=="Lot1") %>% sample_n(25)

sample_2 <- sus_csv %>% subset(Manufacturing_Lot=="Lot2") %>% sample_n(25)

sample_3 <- sus_csv %>% subset(Manufacturing_Lot=="Lot3") %>% sample_n(25)

t.test((sample_1$PSI), mu=1500)

t.test((sample_2$PSI), mu=1500)

t.test((sample_3$PSI), mu=1500)