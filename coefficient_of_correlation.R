library(tidyverse)

x <- c(2,5,3.5,6.2,4.5,1.5,7,4.1,3,5.6)
y <- c(17,6,10,5,8,18,6,8,13,9)

df <- as.data.frame(x) %>% 
  transmute(x = x, y = y,
            x2 = x^2,
           y2 = y^2,
            xy = x*y)

n <- length(df$x)
t_x <- sum(df$x)
t_y <- sum(df$y)
t_x2 <- sum(df$x2)
t_y2 <- sum(df$y2)
t_xy <- sum(df$xy)

cc <- round((n*t_xy-t_x*t_y)/(sqrt(n*t_x2-t_x^2)*sqrt(n*t_y2-t_y^2)),4)

scatter.smooth(x,y)


