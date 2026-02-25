library(tidyverse)
install.packages("palmerpenguins")
library(palmerpenguins)

penguins %>% 
  ggplot(aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_line()

palmerpenguins::penguins
view(penguins)

#correlation
cor(penguins$body_mass_g, penguins$bill_length_mm,
    use = "complete.obs")

