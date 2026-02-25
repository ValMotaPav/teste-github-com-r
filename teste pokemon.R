install.packages("pokemon")
library(pokemon)
library(ggplot2)
library(tidyverse)

View(pokemon::pokemon)

ggplot(pokemon::pokemon) + 
  geom_jitter(aes(defense, attack, color=type_1)) +
  scale_color_manual(values = c("dragon" = "darkslategrey",
                                "dark" = "black",
                                "bug" = "darkolivegreen",
                                "electric" = "yellow",
                                "fairy" = "pink",
                                "fighting" = "chocolate",
                                "fire" = "red",
                                "flying" = "cornflowerblue",
                                "ghost" = "darkslateblue",
                                "grass" = "green",
                                "ground" = "brown4",
                                "ice" = "darkslategray3",
                                "normal" = "azure4",
                                "poison" = "darkorchid",
                                "psychic" = "deeppink4",
                                "rock" = "orange",
                                "steel" = "grey",
                                "water" = "deepskyblue3")) +
  scale_y_continuous(breaks = seq(0, 200, by = 10)) +
  scale_x_continuous(breaks = seq(0, 240, by = 10))

ggplot(pokemon::pokemon) + 
  geom_jitter(aes(type_1, defense, color = type_1), width = 0.3) +
  scale_y_continuous(breaks = seq(0, 240, by = 10)) + 
  scale_color_manual(values = c("dragon" = "darkslategrey",
                                "dark" = "black",
                                "bug" = "darkolivegreen",
                                "electric" = "yellow",
                                "fairy" = "pink",
                                "fighting" = "chocolate",
                                "fire" = "red",
                                "flying" = "cornflowerblue",
                                "ghost" = "darkslateblue",
                                "grass" = "green",
                                "ground" = "brown4",
                                "ice" = "darkslategray3",
                                "normal" = "azure4",
                                "poison" = "darkorchid",
                                "psychic" = "deeppink4",
                                "rock" = "orange",
                                "steel" = "white",
                                "water" = "deepskyblue3"))

filter(pokemon, attack >= 180)
filter(pokemon, defense >= 200)

mean(pokemon::pokemon$defense)

