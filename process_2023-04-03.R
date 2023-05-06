library(tidyverse)
library(arrow)

f <- read_csv_arrow('../../../Downloads/ppmf_20230403_P.csv') 

f %>% 
  arrange(TABBLKST) %>% 
  collect() %>% 
  write_csv('../../../Downloads/ppmf_test.csv')
