library(dplyr)

# Deliverable 1

# Linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# Summary() function, p-value, and r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))


# Deliverable 2

# Create a total_summary data frame to illustrate mean, median, variance, and standard deviation
mecha_coil <- read.csv("C:/Users/ajloz/OneDrive/Desktop/UCF Bootcamp/Module 15/Challenge - 15/Suspension_Coil.csv")

total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI))
View(total_summary)

# Create a lot summary
lot_summary <- mecha_coil %>%
               group_by(Manufacturing_Lot) %>%
               summarize(Mean=mean(PSI),
                         Median=median(PSI),
                         Variance=var(PSI),
                         SD=sd(PSI))
View(lot_summary)


# Deliverable 3

# Create T-Tests

# Compare the populations to the means

t.test(mecha_coil$PSI,mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

View(t.test)