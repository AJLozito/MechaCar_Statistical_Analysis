library(dplyr)

# Linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# Summary() function, p-value, and r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))


# Create a lot summary
lot_summary <- mecha_coil %>%
               group_by(Manufacturing_Lot) %>%
               summarize(Mean=mean(PSI),
                         Median=median(PSI),
                         Variance=var(PSI),
                         SD=sd(PSI))
View(lot_summary)

# Create T-Tests

# Compare the populations to the means

t.test(mecha_coil$PSI,mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

View(t.test)
