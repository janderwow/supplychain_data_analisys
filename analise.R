# path name 
path <- "datasets/supply_chain_logistics_problem.xlsx"


# para trazer os nomes das planilhas do dataset
excel_sheets(path = path)
# "OrderList"        "FreightRates"     "WhCosts"          "WhCapacities"    
# "ProductsPerPlant" "VmiCustomers"     "PlantPorts" 


# carregando dataset
OrderList <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "OrderList")
FreightRates <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "FreightRates")
WhCosts <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "WhCosts")
WhCapacities <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "WhCapacities")
ProductsPerPlant <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "ProductsPerPlant")
VmiCustomers <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "VmiCustomers")
PlantPorts <- read_excel("datasets/supply_chain_logistics_problem.xlsx", sheet = "PlantPorts")


# OrderList

# primeiras linhas do dataset
head(OrderList)

# vizualizando dimensoes da tabela
dim(OrderList)

# estrutura do dataset
str(OrderList)

# resumo do dataset
glimpse(OrderList)

# vizualizando dataset
View(OrderList)

# nomes das variaveis
names(OrderList)

# trazendo valores unicos de algumas variaveis
unique(OrderList$`Service Level`)
unique(OrderList$`Origin Port`)
unique(OrderList$Carrier)
unique(OrderList$`Service Level`)
unique(OrderList$`Plant Code`)
unique(OrderList$`Destination Port`)

# analises uteis utilizando tidyverse %>%

OrderList %>%
  select(`Service Level`) %>%
  count(`Service Level`) %>%
  arrange(desc(n)) %>%
  View()

# buscando valores nulos
sum(is.na(OrderList))

# to get number of which contains na
sum(is.na(OrderList[, c("Service Level", "Origin Port")]))

# variaveis numericas
