# datascience
Code I wrote during my into to data science course

library('gapminder')
library('ggplot2')
library('dplyr')
install.packages("ggplot2")
View(gapminder)

gm <- gapminder
View(gm)
head(gm)

#8
ggplot(data = gm 
       %>% filter(year == 1982), 
       aes(x = lifeExp)) + 
  geom_histogram()

#9
ggplot(data = gm
       %>% filter(continent == 'Asia'),
       aes(x = year,
           y = pop,
           color = country)) +
  geom_line(size = 1.2, alpha = 0.3) +
  theme(legend.position = "bottom")

#10 Add new x and y axis labels, as well as a chart title.

ggplot(data = gm
       %>% filter(continent == 'Asia'),
       aes(x = year,
           y = pop,
           color = country)) +
  geom_line(size = 1.2, alpha = 0.3) +
  theme(legend.position = "bottom") +
  labs(title = 'Asia', x = "Year", y = 'Pop')

#11 Create a bar chart of all European countries gdp per capita in 2002

ggplot(data = gm %>% filter(continent == 'Europe', year == 2002),
       aes(x = gdpPercap,
           y = country)) +
  geom_bar(stat = 'identity')
  
#12 Make the bars transparent and filled with the color blue.

ggplot(data = gm %>% filter(continent == 'Europe', year == 2002),
       aes(x = gdpPercap,
           y = country)) +
  geom_bar(stat = 'identity', fill = 'blue', alpha = 0.5)

#13 Create a new data set called the_nineties that only contains years from the 1990s.

the_nineties <- gm %>% 
  mutate(nine = substr(year, 1, 3)) %>% filter(nine == 199)

View(the_nineties)

#14 Save this dataset to your repository (use write.csv)
getwd ()
setwd('../datascience/')

setwd('testrepo/datascience/')

#15 Add, commit, and push your files to github

