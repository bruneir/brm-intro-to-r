# Assignment Solutions

# 1) if-else statement ---------------------------------------------------------

is_even_or_odd <- function(num) {
  if (num %% 2 == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}

is_even_or_odd(4)
is_even_or_odd(7)

# 2) for or while loop ---------------------------------------------------------

# for loop

sum_of_squares <- 0
for (i in 1:10) {
  sum_of_squares <- sum_of_squares + i^2
}
print(sum_of_squares)

# while loop

sum_of_squares <- 0
i <- 1
while (i <= 10) {
  sum_of_squares <- sum_of_squares + i^2
  i <- i + 1
}
print(sum_of_squares)

# 3) Brunei GDP Data Analysis --------------------------------------------------

# Step 1: Import the Brunei GDP dataset
brunei_gdp <- read.csv("/path/to/brunei_gdp.csv")
head(brunei_gdp)

# Step 2: Data Manipulation
# Filter for years from 2000 onwards
brunei_gdp_new <- subset(brunei_gdp, year >= 2000)

# Step 3: Data Visualization
# Line plot of GDP over the years
plot(brunei_gdp_new$year, 
     brunei_gdp_new$gdp,
     type = "l", 
     col = "blue", 
     main = "GDP over the Years", 
     xlab = "Year", 
     ylab = "GDP")

# Bar plot of GDP for each year
barplot(brunei_gdp_new$gdp,
        brunei_gdp_new$year, 
        col = "green",
        main = "GDP by Year", 
        xlab = "Year", 
        ylab = "GDP")

# Step 4: Export the processed data
write.csv(brunei_gdp_new, "brunei_gdp_new.csv", row.names = FALSE)
