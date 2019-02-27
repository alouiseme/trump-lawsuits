library(ggplot2)
library(network)
library(ggnetwork)
library(sna)

#from playing with https://briatte.github.io/ggnetwork/

n <- network(rgraph(10, tprob = 0.2), directed = FALSE)

n %v% "family" <- sample(letters[1:3], 10, replace = TRUE)
n %v% "importance" <- sample(1:3, 10, replace = TRUE)

ggplot(n, aes(x = x, y = y, xend = xend, yend = yend)) +
  geom_edges(aes(linetype = type, color = type), curvature = 1) +
  geom_nodes(aes(color = family, size = importance))+
  theme_blank()+
  geom_nodelabel(aes(color = family, label = LETTERS[vertex.names]), fontface = "bold")