#2021.1.20

install.packages("tidyverse")
library(dplyr)
library(tidyverse)
library(nycflights13)
data(flights)

# 1. 

# 1번
flights %>% 
  filter(arr_delay >= 120)

# 2번
Houston <- filter(flights, dest %in% c("IAH", "HOU"))

# 3번 
uad <- filter(flights, dest %in% c("UA", "AA", "DL"))

# 4번 
Month <- filter(flights, dest %in% c(7, 8, 9))

# 5번
flights %>%
  filter(arr_delay > 0, dep_delay <= 0)

# 6번 

flights %>%
  filter(arr_delay <=-30, dep_time >= 60)

# 7번 

flights %>%
  filter(dep_time<600|dep_time == 2400)


################################################

# 2. < 넘김 >

# 3. 
sum(is.na(flights$dep_time))

# 4. < 넘기 >

#################################################3

# 5.3.1

# 1번 < arrange >










