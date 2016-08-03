# Load packages
library(ggplot2)

#Load titanic data set
titanic <- read.csv("titanic_clean.csv")

# Check out the structure of titanic
str(titanic)

# Use ggplot() for the first instruction
ggplot(titanic, aes(factor(pclass), fill = factor(sex))) +
  geom_bar(position = "dodge")

# Use ggplot() for the second instruction
ggplot(titanic, aes(factor(pclass), fill = factor(sex))) +
  geom_bar(position = "dodge") +
  facet_grid(". ~survived")

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic, aes(factor(pclass), age, col = factor(sex))) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) +
  facet_grid(". ~survived")

