## GOVT85.39
## Data obtained from Tabory and Smeltz, Chicago Council on Global Affairs
##
## Name: Mark Tao
## Date: November 23, 2021

library(tidyverse)
library(ggthemes)

df <- read.csv("~/Documents/data.csv")

ggplot(df, aes(fill=Region, y=Percentage.support, x=Type.of.economic.policy)) + 
  geom_bar(position="dodge", stat="identity") +
  theme_few() +
  scale_x_discrete(labels = function(x) lapply(strwrap(x, width = 10, simplify = FALSE), paste, collapse="\n")) +
  labs(
    y = "percentage of respondents in agreement",
    x = "types of international economic policies",
    title = "Urban respondents consistently favor economic internationalism",
    caption = "Code can be found at https://github.com/marktao23/GOVT85.39",
    subtitle = "Source: Tabory and Smeltz (2017)")

ggsave("~/Desktop/figure1.pdf", width = 10, height = 7.5)
