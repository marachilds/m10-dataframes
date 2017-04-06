# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawks <- c(12, 9, 37, 27)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
competition <- c(10, 3, 18, 17)

# Combine your two vectors into a dataframe
season <- data.frame(seahawks, competition)

# Create a new column "diff" that is the difference in points
season$diff <- season$seahawks - season$competition

# Create a new column "won" which is TRUE if the Seahawks wom
season$won <- season$diff > 0

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
rownames(season) <- opponents
