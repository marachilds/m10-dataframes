# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
personal.expenditure <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(personal.expenditure)

# Why are they so strange?
# You can't name a column with a number

# What are the row names of your dataframe?
rownames(personal.expenditure)

# Create a column `category` that is equal to your rownames
personal.expenditure$category <- rownames(personal.expenditure)

# How much money was spent on personal care in 1940?
care.1940 <- personal.expenditure['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
food.1960 <- personal.expenditure['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
highest.1960 <- personal.expenditure$category[personal.expenditure$X1960 == max(personal.expenditure$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighSpend <- function(year) {
  return(personal.expenditure$category[personal.expenditure[year] == max(personal.expenditure[year])])
}

# Using your function, determine the highest spending category of each year
high.1950 <- HighSpend('X1950')

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
high.of.year <- list()
for(year in seq(1940, 1960, 5)) {
  year.index <- paste0('X', year)
  high.of.year[year.index] <- HighSpend(year.index)
}
