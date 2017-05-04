library(ineq)
data_set <- read.csv('users_dataset.csv', TRUE, ",")
head(data_set)
income <- data_set$income
paste("gini:", ineq(income,type = "Gini"), sep=" ")
#print("gini: ",ineq(data_set$income,type = "Gini")
#plot(Lc(AirPassengers))

gini <- ineq(income,type = "Gini")
atkinson0 <- Atkinson(income, parameter = 0, na.rm = TRUE)
atkinson05 <- Atkinson(income, parameter = 0.5, na.rm = TRUE)
atkinson1 <- Atkinson(income, parameter = 1, na.rm = TRUE)
thiel <- Theil(income, parameter = 0, na.rm = TRUE)
var_coef <- var.coeff(income)
kolm <- Kolm(income, parameter = 1, na.rm = TRUE)

paste("Gini: ", gini)
paste("Atkinson epsilon=0: ", atkinson0)
paste("Atkinson epsilon=0.5: ", atkinson05)
paste("Atkinson epsilon=1: ", atkinson1)
paste("Thiel: ", thiel)
paste("Coef of variation: ", var_coef)


# [1] "Gini:  0.444510730810279"
# > paste("Atkinson epsilon=0: ", atkinson0)
# [1] "Atkinson epsilon=0:  0"
# > paste("Atkinson epsilon=0.5: ", atkinson05)
# [1] "Atkinson epsilon=0.5:  0.170146049026273"
# > paste("Atkinson epsilon=1: ", atkinson1)
# [1] "Atkinson epsilon=1:  0.350512160004805"
# > paste("Thiel: ", thiel)
# [1] "Thiel:  0.324566254000937"
# > paste("Coef of variation: ", var_coef)
# [1] "Coef of variation:  0.819013822648111"
