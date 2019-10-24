options(warn=-1)
library(dplyr)
library(DT)
library(dygraphs)
library(ggplot2)
library(htmltools)
library(leaflet)
library(lubridate)
library(plyr)
library(readxl)
library(shiny)
library(shinydashboard)
library(readxl)
library(tidyr)
library(tidyverse)
library(xts)

# Debit_BO3_avalH_2018=readRDS(file="./Donnees_OK/Debit_BO3_avalH_2018_ord.rds")
# 
# 
# Debit_BO3_avalH_tab_2019 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2019_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# Debit_BO3_avalH_tab_2018 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# Debit_BO3_avalH_tab_2017 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)



# Debit_BO3_avalH_tab_2017 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
sites_matri <- read.csv(file="./Donnees_OK/coordo_sites.csv", header=TRUE, sep=";")

#sites_matri <- read.csv("https://www.dropbox.com/s/vc9m3tk68ero65o/coordo_sites.csv?dl=1",header=TRUE, sep=";")

sites_matri$Latitude <- as.double(sites_matri$Latitude )
sites_matri$Longitude <- as.double(sites_matri$Longitude)
sites_matri$Nom_site<-as.character(sites_matri$Nom_site)
colnames(sites_matri) = c("Num_station", "Latitude", "Longitude","Nom_Site","X") 
#sites_matri<-select (sites_matri,-c(X))
sites_matri <- subset( sites_matri ,select = -X )

#as_tibble(sites_matri)


# library(shiny)
# library(shinydashboard)
# library(ggplot2)
# library(dygraphs)
# library(dplyr)
# library(tidyverse)
# library(readxl)
# library(xts)
# library(plyr)
# library(htmltools)
# library(DT)
# temperature <- ts(frequency = 12, start = c(1980, 1),
#                   data = c(7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 
#                            25.2, 26.5, 23.3, 18.3, 13.9, 9.6))
# rainfall <- ts(frequency = 12, start = c(1980, 1),
#                data = c(49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 
#                         135.6, 148.5, 216.4, 194.1, 95.6, 54.4))
# 
# dygraph(weather) %>%
#   dyAxis("y", label = "Temperature (C)") %>%
#   dyAxis("y2", label = "Rainfall", independentTicks = TRUE) %>%
#   dySeries("rainfall", axis = 'y2')

# dygraph(lungDeaths, main = "Deaths from Lung Disease (UK)") %>%
#   dySeries("mdeaths", drawPoints = TRUE, color = "blue") %>%
#   dySeries("fdeaths", stepPlot = TRUE, color = "red")   





# > x <- c("2011-06-04-12:00:00")
# > ydm_hms(x)
# [1] "2011-04-06 12:00:00 UTC"