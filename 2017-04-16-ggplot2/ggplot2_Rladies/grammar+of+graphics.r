
# install.packages('ggplot2')
# install.packages('readr') if not already installed

library('ggplot2')
library('readr')

orleans <- read_csv('orleans.csv')
parishes <- read_csv('parishes.csv')

head(orleans)

qplot(population.00, population.10, data = orleans)

qplot(population.00, population.10, data = orleans) + 
    geom_abline() + 
    ggtitle('Census Tracts in Orleans Parish')

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point() +
  geom_abline() +
  ggtitle('Census Tracts in Orleans Parish')

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point() +
  geom_abline() +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000))

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point() +
  geom_abline() +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000), breaks = seq(0, 8000, 1000))

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point(color = 'blue') +
  geom_abline() +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000), breaks = seq(0, 8000, 1000))

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point(color = 'blue') +
  geom_line() +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000), breaks = seq(0, 8000, 1000))

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point(color = 'blue') +
  geom_smooth() +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000), breaks = seq(0, 8000, 1000))

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point(color = 'blue') +
  geom_smooth(method = 'lm', se = FALSE) +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000), breaks = seq(0, 8000, 1000))

orleans$pop.diff <- orleans$population.10 - orleans$population.00

orleans$pop.decrease <- ifelse(orleans$pop.diff < 0, 'decrease', 'increase')

ggplot(data = orleans, 
       aes(x = population.00, 
           y = population.10)) + 
  geom_point(aes(color = pop.decrease)) +
  geom_smooth(method = 'lm', se = FALSE) +
  ggtitle('Census Tracts in Orleans Parish') +
  scale_x_continuous(limits = c(0, 8000)) +
  scale_y_continuous(limits = c(0, 8000), breaks = seq(0, 8000, 1000))

head(parishes)

sorted <- parishes[order(-parishes$population.10),] 
head(sorted)

head(subset(sorted, select = c(parish, population.10)))

ggplot(data = head(sorted), 
       aes(x = parish, 
           y = 	population.10)) +
  geom_bar(stat = 'identity')

sorted$parish.2 <- factor(sorted$parish, 
                          levels = unique(as.character(sorted$parish)))


ggplot(data = head(sorted), 
       aes(x = parish.2, 
           y = 	population.10)) +
  geom_bar(stat = 'identity')

sorted$parish.2 <- factor(sorted$parish.2, levels = rev(levels(sorted$parish.2)))

ggplot(data = head(sorted, n = 5), 
       aes(x = parish.2, 
           y = 	population.10/1000)) +
  geom_bar(stat = 'identity') +
  coord_flip()
