library(dplyr)

my_csv <- read.csv("MechaCar_mpg.csv")

head(my_csv)

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data=my_csv)

summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data=my_csv))