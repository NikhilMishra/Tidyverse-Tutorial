library(tidyverse)
#assign passengers to train data
passengers <- train
#make survival yes or no rather than 1 or 0
passengers1 <- passengers %>%
  mutate(Survived = ifelse(Survived == 0, "No", "Yes"))
#center title
theme_update(plot.title = element_text(hjust = 0.5))
#create histogram
plot <- ggplot(passengers1, aes(x=Age, fill = Survived)) + geom_histogram(binwidth = .5) + facet_grid(~Sex)
#plot histogram
plot + ggtitle("Survival Rate on Titanic Based on Age and Sex")