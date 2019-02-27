# Libraries
library(tidyverse)
library(networkD3)

#data is `data-trump-lawsuits.csv`

versus <- data %>%
  select(caseName, plaintiff, defendant, type, capacity)


#this network shows plaintiff at center of network 
simpleNetwork(versus,     
              Source = 2,
              Target = 3,
              height = 880,
              width = 1980,
              linkDistance = 100,
              charge = -30,
              fontSize = 15,
              fontFamily = "sans-serif",
              linkColour = "#FFC300",
              nodeColour = "#117864",
              opacity = 0.9,
              zoom = TRUE )

    
