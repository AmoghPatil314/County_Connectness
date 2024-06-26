library(primer.data)
library(tidyverse)
library(scales)
connectedness|>
  drop_na()|>
  ggplot(mapping=aes(x=population, 
                     y=connectedness)) +
  geom_point(color="black") +
  geom_smooth(method="lm", 
              color="blue",
              formula=y~x) +
  scale_x_log10(label=comma) +
  labs(title = "US County Population versus Economic Connectedness",
       subtitle="Population Size does not matter to EC", 
       x="Population",
       y="Economic Connectedness")



