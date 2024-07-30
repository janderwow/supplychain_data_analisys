#baixando pacotes
install.packages("tidyverse")
install.packages("readxl")
library(readxl)
library(tidyverse)

supplychain <- read_excel("datasets/supply_chain_logistics_problem.xlsx")

glimpse(supplychain)

