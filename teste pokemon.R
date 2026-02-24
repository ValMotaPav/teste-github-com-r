install.packages("pokemon")
library(pokemon)

view(pokemon)

pokemon %>% 
  ggplot(aes(x = attack)) + geom_dotplot(binwidth = 1)

