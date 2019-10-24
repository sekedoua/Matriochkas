
#source("Debit.R")
#library(datamatri)

 library(dygraphs)
library(ggplot2)
 library(htmltools)
 library(leaflet)
 library(rmarkdown)
library(plyr)
 library(readxl)
 library(shiny)
library(shinydashboard)
library(zoo)
library(tidyr)
library(tidyverse)
library(uuid)
library(xts)
library(dplyr)
library(DT)
library(lubridate)
library(pcaPP)
 
library(png)
 library(dplyr)



 library(varhandle)
 library(plotly)
 library(reshape2) 
 library(qdap)
 library(xts)

 require(scales)
 require(gridExtra)
 library(dslabs)
 
 library(ggthemes)
 
 library(rAmCharts)
 library(rainbow)
 
options(warn=-1)
options(digits=8)



#source("niveau_eau.R")
#source("physicochimie.R")


# borja_id_2019<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019.rds")
# 
# borja_id_2018<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018.rds")
# borja_id_2017<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2017.rds")
# 
# borja_dd_2019<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2019.rds")
# borja_dd_2018<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2018.rds")
# borja_dd_2017<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2017.rds")
# borja_dd_2016<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2016.rds")
# borja_dd_2015<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2015.rds")
# borja_dd_2014<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2014.rds")
# borja_dd_2013<-readRDS(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2013.rds")


#borja_dd_20= read.csv(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_date_heure.csv", header=TRUE, sep=";",stringsAsFactors=FALSE)
#borja_id_2019= read.csv(file="Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_date_heure.csv", header=TRUE, sep=";",stringsAsFactors=FALSE)

 #borja_id_2019<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 #borja_id_2018<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)


 
 
 # borja_id_2017<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2017.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# 
 #borja_dd_2019<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2019_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2018<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2018_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2017<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2017.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2016<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2016.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2015<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2015.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2014<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2014.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2013<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2013.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

# borja_id_2019<-read.csv("https://www.dropbox.com/s/r0py2cyhchbnx3u/Noue_Dumont_Amont_Debit_2019.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_id_2018<-read.csv("https://www.dropbox.com/s/t50cvtiv7w51mfy/Noue_Dumont_Amont_Debit_2018.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_id_2017<-read.csv("https://www.dropbox.com/s/50b9d88odk585s7/Noue_Dumont_Amont_Debit_2017.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# 
# borja_dd_2019<-read.csv("https://www.dropbox.com/s/9kpbbkkdek3fwpx/Noue_Dumont_Aval_Debit_2019.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2018<-read.csv("https://www.dropbox.com/s/n8y6dwvq0psdov6/Noue_Dumont_Aval_Debit_2018.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2017<-read.csv("https://www.dropbox.com/s/czm5xoieumxko35/Noue_Dumont_Aval_Debit_2017.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2016<-read.csv("https://www.dropbox.com/s/e0q9nrjuyrccygi/Noue_Dumont_Aval_Debit_2016.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2015<-read.csv("https://www.dropbox.com/s/fsxkevpjmz3k5ht/Noue_Dumont_Aval_Debit_2015.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2014<-read.csv("https://www.dropbox.com/s/awbnq1ak21m8sai/Noue_Dumont_Aval_Debit_2014.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_dd_2013<-read.csv("https://www.dropbox.com/s/8jo42oo91f0upon/Noue_Dumont_Aval_Debit_2013.csv?dl=1", header=TRUE, sep=",",stringsAsFactors=FALSE)
# 

 #Lecture des csv pour affichage dans un tableau 
Debit_BO3_amontH_tab=      read.csv(file="./Donnees_OK/Debit_BO3_amontH_fusion_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_BO3_amontH_tab_2018= read.csv(file="./Donnees_OK/Debit_BO3_amontH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_BO3_amontH_tab_2017= read.csv(file="./Donnees_OK/Debit_BO3_amontH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_BO3_amontH_tab_2016= read.csv(file="./Donnees_OK/Debit_BO3_amontH_2016_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

Debit_BO3_avalH_tab = read.csv(file="./Donnees_OK/Debit_BO3_avalH_fusion_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_BO3_avalH_tab_2019 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2019_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_BO3_avalH_tab_2018 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_BO3_avalH_tab_2017 = read.csv(file="./Donnees_OK/Debit_BO3_avalH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)


Debit_Dumont_amontH_tab=read.csv(file="./Donnees_OK/Debit_VaB_amontH_fusion_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_Dumont_amontH_tab_2019 = read.csv(file="./Donnees_OK/Debit_Dumont_amontH_2019_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_Dumont_amontH_tab_2018= read.csv(file="./Donnees_OK/Debit_Dumont_amontH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
Debit_Dumont_amontH_tab_2017= read.csv(file="./Donnees_OK/Debit_Dumont_amontH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)


 Debit_Dumont_avalH_tab = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_fusion_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2019 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2019_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2018 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2017 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2016 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2016_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2015 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2015_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2014 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2014_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_Dumont_avalH_tab_2013 = read.csv(file="./Donnees_OK/Debit_Dumont_avalH_2013_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 
 
 Debit_VaB_amontH_tab= read.csv(file="./Donnees_OK/Debit_VaB_amontH_fusion_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_VaB_amontH_tab_2019 = read.csv(file="./Donnees_OK/Debit_VaB_amontH_2019_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_VaB_amontH_tab_2018= read.csv(file="./Donnees_OK/Debit_VaB_amontH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_VaB_amontH_tab_2017= read.csv(file="./Donnees_OK/Debit_VaB_amontH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

 Debit_VaB_aValH_tab= read.csv(file="./Donnees_OK/Debit_VaB_avalH_fusion_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_VaB_avalH_tab_2019 = read.csv(file="./Donnees_OK/Debit_VaB_avalH_2019_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_VaB_avalH_tab_2018= read.csv(file="./Donnees_OK/Debit_VaB_avalH_2018_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 Debit_VaB_avalH_tab_2017= read.csv(file="./Donnees_OK/Debit_VaB_avalH_2017_propre.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

 
#  borja_id_temp_2019 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019_ord_5min.rds")
#  borja_id_temp_2018 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018_ord_5min.rds")
# # borja_id_temp_2017 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2017_ord.rds")
# # # 
# # # 
# # # 
#  borja_dd_temp_2019<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2019_ord_5min.rds")
#  borja_dd_temp_2018<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2018_ord_5min.rds")
 
 #Lecture des rds pour la génération des graphiques
 Debit_BO3_amontH_2018=readRDS(file="./Donnees_OK/Debit_BO3_amontH_2018_ord.rds")
 Debit_BO3_amontH_2017=readRDS(file="./Donnees_OK/Debit_BO3_amontH_2017_ord.rds")
 Debit_BO3_amontH_2016=readRDS(file="./Donnees_OK/Debit_BO3_amontH_2016_ord.rds")
 
 Debit_BO3_avalH_2019=readRDS(file="./Donnees_OK/Debit_BO3_avalH_2019_ord.rds")
 Debit_BO3_avalH_2018=readRDS(file="./Donnees_OK/Debit_BO3_avalH_2018_ord.rds")
 Debit_BO3_avalH_2017=readRDS(file="./Donnees_OK/Debit_BO3_avalH_2017_ord.rds")
 
 Debit_Dumont_amontH_2019=readRDS(file="./Donnees_OK/Debit_Dumont_amontH_2019_ord.rds")
 Debit_Dumont_amontH_2018=readRDS(file="./Donnees_OK/Debit_Dumont_amontH_2018_ord.rds")
 Debit_Dumont_amontH_2017=readRDS(file="./Donnees_OK/Debit_Dumont_amontH_2017_ord.rds")
 
 Debit_Dumont_avalH_2019=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2019_ord.rds")
 Debit_Dumont_avalH_2018=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2018_ord.rds")
 Debit_Dumont_avalH_2017=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2017_ord.rds")
 Debit_Dumont_avalH_2016=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2016_ord.rds")
 Debit_Dumont_avalH_2015=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2015_ord.rds")
 Debit_Dumont_avalH_2014=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2014_ord.rds")
 Debit_Dumont_avalH_2013=readRDS(file="./Donnees_OK/Debit_Dumont_avalH_2013_ord.rds")
 
 Debit_VaB_amontH_2019=readRDS(file="./Donnees_OK/Debit_VaB_amontH_2019_ord.rds")
 Debit_VaB_amontH_2018=readRDS(file="./Donnees_OK/Debit_VaB_amontH_2018_ord.rds")
 Debit_VaB_amontH_2017=readRDS(file="./Donnees_OK/Debit_VaB_amontH_2017_ord.rds")
 
 Debit_VaB_avalH_2019=readRDS(file="./Donnees_OK/Debit_VaB_avalH_2019_ord.rds")
 Debit_VaB_avalH_2018=readRDS(file="./Donnees_OK/Debit_VaB_avalH_2018_ord.rds")
 Debit_VaB_avalH_2017=readRDS(file="./Donnees_OK/Debit_VaB_avalH_2017_ord.rds")
 
 
 #toutphysicochimie
 
 dfPC_hap = read.csv(file="physico_Chimie_propre_HAP.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_metx = read.csv(file="physico_Chimie_propre_metaux.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_pesti= read.csv(file="physico_Chimie_propre_PESTICIDES.csv",header=TRUE, sep=",", stringsAsFactors = F)
 
 dfPC_hap$DtHechanti<-str_replace_all(dfPC_hap$DtHechanti,"-","/")
 dfPC_metx$DtHechanti<-str_replace_all(dfPC_metx$DtHechanti,"-","/")
 dfPC_pesti$DtHechanti<-str_replace_all(dfPC_pesti$DtHechanti,"-","/")
 
 dfPC_hap$DtHechanti <- strptime(dfPC_hap$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_hap$DtHechanti <-as.POSIXct(dfPC_hap$DtHechanti)
 dfPC_metx$DtHechanti <- strptime(dfPC_metx$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_metx$DtHechanti <-as.POSIXct(dfPC_metx$DtHechanti)
 dfPC_pesti$DtHechanti <- strptime(dfPC_pesti$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_pesti$DtHechanti <-as.POSIXct(dfPC_pesti$DtHechanti)
 
 
 #toutphysicochimie
 
 #Details_physicochimie
 
 dfPC_hap_BO3 = read.csv(file="dfPC_hap_BO3.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_hap_vAB= read.csv(file="dfPC_hap_VAB.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_hap_EcoQuaChez = read.csv(file="dfPC_hap_EcoQuaChez.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_hap_EcoQuaChez$Site <-"Ecoquartier Bottière-Chesnaie"
 
 dfPC_metx_BO3 = read.csv(file="dfPC_metx_BO3.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_metx_BO3$Site <-"Ecoquartier Bottière-Chesnaie"
 dfPC_metx_BO3_brut<-dfPC_metx_BO3
 dfPC_metx_BO3<- dfPC_metx_BO3 %>% filter( Parametre  %in% 
                                                           c("As",
                                                             "Cd" ,
                                                             "Co",
                                                             "Cr",
                                                             "Cu",
                                                             "Mo",
                                                             "Ni",
                                                             "Pb"  ,
                                                             "Sr",
                                                             "Ti",
                                                             "V",
                                                             "Zn"
                                                             
                                                           ))
 
 
 
 
 dfPC_metx_EcoQuaChez = read.csv(file="dfPC_metx_EcoQuaChez.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_metx_EcoQuaChez$Site <-"Ecoquartier Bottière-Chesnaie"
 dfPC_metx_EcoQuaChez_brut<-dfPC_metx_EcoQuaChez
 dfPC_metx_EcoQuaChez<- dfPC_metx_EcoQuaChez %>% filter( Parametre  %in% 
                            c("As",
                              "Cd" ,
                              "Co",
                              "Cr",
                              "Cu",
                              "Mo",
                              "Ni",
                              "Pb"  ,
                              "Sr",
                              "Ti",
                              "V",
                              "Zn"
                              
                            ))
 
 
 
 dfPC_metx_VAB = read.csv(file="dfPC_metx_VillauB.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_metx_VAB_brut <- dfPC_metx_VAB 
 dfPC_metx_VAB<- dfPC_metx_VAB %>% filter( Parametre  %in% 
                                                           c("As",
                                                             "Cd" ,
                                                             "Co",
                                                             "Cr",
                                                             "Cu",
                                                             "Mo",
                                                             "Ni",
                                                             "Pb"  ,
                                                             "Sr",
                                                             "Ti",
                                                             "V",
                                                             "Zn"
                                                             
                                                           ))
 
 
 
 
 dfPC_pesti_BO3= read.csv(file="dfPC_pesti_BO3.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_pesti_EcoQuaChez= read.csv(file="dfPC_pesti_EcoQuaChez.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_pesti_VAB= read.csv(file="dfPC_pesti_VillauB.csv",header=TRUE, sep=",", stringsAsFactors = F)
 dfPC_pesti_EcoQuaChez$Site <-"Ecoquartier Bottière-Chesnaie"
 
 #>>>traitement de la date
 
 dfPC_hap_BO3$DtHechanti<-str_replace_all(dfPC_hap_BO3$DtHechanti,"-","/")
 dfPC_hap_BO3$DtHechanti <- strptime(dfPC_hap_BO3$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_hap_BO3$DtHechanti <-as.POSIXct(dfPC_hap_BO3$DtHechanti)
 dfPC_hap_BO3$Site <- "Bassin Chézine BO3"
 
 dfPC_hap_vAB$DtHechanti<-str_replace_all(dfPC_hap_vAB$DtHechanti,"-","/")
 dfPC_hap_vAB$DtHechanti <- strptime(dfPC_hap_vAB$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_hap_vAB$DtHechanti <-as.POSIXct(dfPC_hap_vAB$DtHechanti)
 
 dfPC_hap_EcoQuaChez$DtHechanti<-str_replace_all(dfPC_hap_EcoQuaChez$DtHechanti,"-","/")
 dfPC_hap_EcoQuaChez$DtHechanti <- strptime(dfPC_hap_EcoQuaChez$DtHechanti,"%Y/%m/%d") #toujours vérifier lordre et ne nombre jmahms
 dfPC_hap_EcoQuaChez$DtHechanti <-as.POSIXct(dfPC_hap_EcoQuaChez$DtHechanti)
 
 
 
 dfPC_metx_BO3$DtHechanti<-str_replace_all(dfPC_metx_BO3$DtHechanti,"-","/")
 dfPC_metx_BO3$DtHechanti <- strptime(dfPC_metx_BO3$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_metx_BO3$DtHechanti <-as.POSIXct(dfPC_metx_BO3$DtHechanti)
 dfPC_metx_BO3$Site <- "Bassin Chézine BO3"
 
 dfPC_metx_EcoQuaChez$DtHechanti<-str_replace_all(dfPC_metx_EcoQuaChez$DtHechanti,"-","/")
 dfPC_metx_EcoQuaChez$DtHechanti <- strptime(dfPC_metx_EcoQuaChez$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_metx_EcoQuaChez$DtHechanti <-as.POSIXct(dfPC_metx_EcoQuaChez$DtHechanti)
 
 dfPC_metx_VAB$DtHechanti<-str_replace_all(dfPC_metx_VAB$DtHechanti,"-","/")
 dfPC_metx_VAB$DtHechanti <- strptime(dfPC_metx_VAB$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_metx_VAB$DtHechanti <-as.POSIXct(dfPC_metx_VAB$DtHechanti)
 
 
 
 dfPC_pesti_BO3$DtHechanti<-str_replace_all(dfPC_pesti_BO3$DtHechanti,"-","/")
 dfPC_pesti_BO3$DtHechanti <- strptime(dfPC_pesti_BO3$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_pesti_BO3$DtHechanti <-as.POSIXct(dfPC_pesti_BO3$DtHechanti)
 dfPC_pesti_BO3$Site <- "Bassin Chézine BO3"
 dfPC_pesti_EcoQuaChez$DtHechanti<-str_replace_all(dfPC_pesti_EcoQuaChez$DtHechanti,"-","/")
 dfPC_pesti_EcoQuaChez$DtHechanti <- strptime(dfPC_pesti_EcoQuaChez$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_pesti_EcoQuaChez$DtHechanti <-as.POSIXct(dfPC_pesti_EcoQuaChez$DtHechanti)
 
 dfPC_pesti_VAB$DtHechanti<-str_replace_all(dfPC_pesti_VAB$DtHechanti,"-","/")
 dfPC_pesti_VAB$DtHechanti <- strptime(dfPC_pesti_VAB$DtHechanti,"%Y/%m/%d %H:%M")
 dfPC_pesti_VAB$DtHechanti <-as.POSIXct(dfPC_pesti_VAB$DtHechanti)
 
 #>>>traitement de la date
 
# borja_dd_temp_2017<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2017_ord.rds")
# borja_dd_temp_2016<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2016_ord.rds")
# borja_dd_temp_2015<-readRDS(file="././Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2015_ord.rds")
# borja_dd_temp_2014<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2014_ord.rds")
# borja_dd_temp_2013<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2013_ord.rds")

# borja_id_temp_2019 <-readRDS(gzcon(url("https://www.dropbox.com/s/e05kcsxcrlejmas/Noue_Dumont_Amont_Debit_2019_ord.rds?dl=1")))
# borja_id_temp_2018 <-readRDS(gzcon(url("https://www.dropbox.com/s/sblx3umvlalnxel/Noue_Dumont_Amont_Debit_2018_ord.rds?dl=1")))
# borja_id_temp_2017 <-readRDS(gzcon(url("https://www.dropbox.com/s/3q4zrlvamrqe7pc/Noue_Dumont_Amont_Debit_2017_ord.rds?dl=1")))
# # 
# # 
# # 
# borja_dd_temp_2019<-readRDS(gzcon(url("https://www.dropbox.com/s/7la68ktmi1a3bgs/Noue_Dumont_Aval_Debit_2019_ord.rds?dl=1")))
# borja_dd_temp_2018<-readRDS(gzcon(url("https://www.dropbox.com/s/hsjfsy65lwj47h7/Noue_Dumont_Aval_Debit_2018_ord.rds?dl=1")))
# borja_dd_temp_2017<-readRDS(gzcon(url("https://www.dropbox.com/s/umo18z6z5vp8qll/Noue_Dumont_Aval_Debit_2017_ord.rds?dl=1")))
# borja_dd_temp_2016<-readRDS(gzcon(url("https://www.dropbox.com/s/hgs488o5j27zryn/Noue_Dumont_Aval_Debit_2016_ord.rds?dl=1")))
# borja_dd_temp_2015<-readRDS(gzcon(url("https://www.dropbox.com/s/msm4shhq5xud2vl/Noue_Dumont_Aval_Debit_2015_ord.rds?dl=1")))
# borja_dd_temp_2014<-readRDS(gzcon(url("https://www.dropbox.com/s/fs7h3nuo4xp9lt1/Noue_Dumont_Aval_Debit_2014_ord.rds?dl=1")))
# borja_dd_temp_2013<-readRDS(gzcon(url("https://www.dropbox.com/s/1kh4wmbx299zatq/Noue_Dumont_Aval_Debit_2013_ord.rds?dl=1")))

  

 dygrph_Debit_BO3_amont_2018<- dygraph( Debit_BO3_amontH_2018, main = "Debit Amont 2018")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_BO3_amont_2017<- dygraph( Debit_BO3_amontH_2017, main = "Debit Amont 2017")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_BO3_amont_2016<- dygraph( Debit_BO3_amontH_2016, main = "Debit Amont 2016")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()

 
 dygrph_Debit_BO3_aval_2019<- dygraph( Debit_BO3_avalH_2019, main = "Debit aval 2019")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_BO3_aval_2018<- dygraph( Debit_BO3_avalH_2018, main = "Debit aval 2018")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_BO3_aval_2017<- dygraph( Debit_BO3_avalH_2017, main = "Debit aval 2017")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 
 
 dygrph_Debit_Dumont_amont_2019<- dygraph( Debit_Dumont_amontH_2019, main = "Debit amont 2019")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_amont_2018<- dygraph( Debit_Dumont_amontH_2018, main = "Debit amont 2018")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_amont_2017<- dygraph( Debit_Dumont_amontH_2017, main = "Debit amont 2017")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 
 
 dygrph_Debit_Dumont_aval_2019<- dygraph( Debit_Dumont_avalH_2019, main = "Debit aval 2019")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_aval_2018<- dygraph( Debit_Dumont_avalH_2018, main = "Debit aval 2018")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_aval_2017<- dygraph( Debit_Dumont_avalH_2017, main = "Debit aval 2017")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_aval_2016<- dygraph( Debit_Dumont_avalH_2016, main = "Debit aval 2016")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_aval_2015<- dygraph( Debit_Dumont_avalH_2015, main = "Debit aval 2015")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_aval_2014<- dygraph( Debit_Dumont_avalH_2014, main = "Debit aval 2014")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_Dumont_aval_2013<- dygraph( Debit_Dumont_avalH_2013, main = "Debit aval 2013")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 
 dygrph_Debit_VaB_amont_2019<- dygraph( Debit_VaB_amontH_2019, main = "Debit amont 2019")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_VaB_amont_2018<- dygraph( Debit_VaB_amontH_2018, main = "Debit amont 2018")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 dygrph_Debit_VaB_amont_2017<- dygraph( Debit_VaB_amontH_2017, main = "Debit amont 2017")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
 


dygrph_Debit_VaB_aval_2019<- dygraph( Debit_VaB_avalH_2019, main = "Debit aval 2019")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
dygrph_Debit_VaB_aval_2018<- dygraph( Debit_VaB_avalH_2018, main = "Debit aval 2018")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
dygrph_Debit_VaB_aval_2017<- dygraph( Debit_VaB_avalH_2017, main = "Debit aval 2017")%>% dyAxis("y", label = "Debit(l/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()

#graph physicochimie  Bot chez
graph_HAP_Bot_Chez<-amBarplot(x = "Station", y = "Valeur", data = dfPC_hap_EcoQuaChez, horiz = FALSE,main="Fla_sol")
graph_Mtx_Bot_Chez <- ggplotly(ggplot(dfPC_metx_EcoQuaChez, aes(x = Parametre, y = Valeur,colour = Parametre)) + 
  geom_boxplot()+  facet_wrap(Station ~., scale = "free_y")+theme(axis.text.x = element_text(angle = 90,  hjust = 1, vjust = 0), 
                                                                  axis.line = element_blank(), axis.ticks.x = element_blank(),
                                                                   axis.title.x = element_blank(),
                                                                  legend.title = element_blank()
                                                                  
                                                                  ) 
   ) 

graph_Pesti_Bot_Chez <-ggplotly(ggplot(dfPC_pesti_EcoQuaChez, aes(x = Parametre, y = Valeur,colour = Parametre)) +  
  geom_boxplot()+  facet_wrap(Station ~., scale = "free_y")+theme(axis.text.x = element_text(angle = 90,  hjust = 1, vjust = 0),  axis.line = element_blank(), axis.ticks.x = element_blank(),
                                                                  axis.title.x = element_blank(),
                                                                  legend.title = element_blank()
                                                                  )
   ) 

#graph physicochimie  BO3
graph_HAP_BO3<-ggplotly( ggplot(dfPC_hap_BO3, aes(x = Station, y = Valeur,fill=Parametre)) +
                           geom_boxplot()+scale_fill_manual(values=c("#56B4E9")))

graph_Mtx_BO3 <- ggplotly(ggplot(dfPC_metx_BO3, aes(x = Parametre, y = Valeur,colour = Parametre)) + 
                            geom_boxplot()+  facet_wrap(Station ~., scale = "free_y")+theme(axis.text.x = element_text(angle = 90,  hjust = 1, vjust = 0), 
                                                                                            axis.line = element_blank(), axis.ticks.x = element_blank(),
                                                                                            axis.title.x = element_blank(),
                                                                                            legend.title = element_blank()
                            )
) 




graph_Pesti_BO3 <-ggplotly(ggplot(dfPC_pesti_BO3, aes(x = Parametre, y = Valeur,colour = Parametre)) + 
                             geom_boxplot()+  facet_wrap(Station ~., scale = "free_y")+theme(axis.text.x = element_text(angle = 90,  hjust = 1, vjust = 0),  axis.line = element_blank(), axis.ticks.x = element_blank(),
                                                                                             axis.title.x = element_blank(),
                                                                                             legend.title = element_blank()
                             )
) 



#graph physicochimie  Ville au Blanc



graph_HAP_VAB<-ggplotly( ggplot(dfPC_hap_vAB, aes(x = Station, y = Valeur,fill=Parametre)) +
                           geom_boxplot()+scale_fill_manual(values=c("#56B4E9")))

graph_Mtx_VAB <- ggplotly(ggplot(dfPC_metx_VAB, aes(x = Parametre, y = Valeur,colour = Parametre)) + 
                            geom_boxplot()+  facet_wrap(Station ~., scale = "free_y")+theme(axis.text.x = element_text(angle = 90,  hjust = 1, vjust = 0), 
                                                                                            axis.line = element_blank(), axis.ticks.x = element_blank(),
                                                                                            axis.title.x = element_blank(),
                                                                                            legend.title = element_blank()
                            )
) 




graph_Pesti_VAB <-ggplotly(ggplot(dfPC_pesti_VAB, aes(x = Parametre, y = Valeur,colour = Parametre)) + 
                             geom_boxplot()+  facet_wrap(Station ~., scale = "free_y")+theme(axis.text.x = element_text(angle = 90,  hjust = 1, vjust = 0),  axis.line = element_blank(), axis.ticks.x = element_blank(),
                                                                                             axis.title.x = element_blank(),
                                                                                             legend.title = element_blank()
                             )
) 






# 
#dygrph_noue_amont_2019<- dygraph(borja_id_temp_2019, main = "Debit Amont 2019")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
#dygrph_noue_amont_2018<-dygraph(borja_id_temp_2018, main = "Debit Amont 2018")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_amont_2017<-dygraph(borja_id_temp_2017, main = "Debit Amont 2017", group = "Debit Amont Noue")%>% dyAxis("y", label = "Debit(m3/S)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()


#dygrph_noue_aval_2019<-dygraph(borja_dd_temp_2019, main = "Debit Aval 2019")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
#dygrph_noue_aval_2018<-dygraph(borja_dd_temp_2018, main = "Debit Aval 2018")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2017<-dygraph(borja_dd_temp_2017, main = "Debit Aval 2017", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2016<-dygraph(borja_dd_temp_2016, main = "Debit Aval 2016", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2015<-dygraph(borja_dd_temp_2015, main = "Debit Aval 2015", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2014<-dygraph(borja_dd_temp_2014, main = "Debit Aval 2014", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2013<-dygraph(borja_dd_temp_2013, main = "Debit Aval 2013", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/S)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
#avant :  dygrph_noue_aval_2013<-dygraphs::dygraph(borja_dd_temp_2013, main = "Debit Aval 2013", group = "Debit Aval  Noue")%>% dyAxis("y", label = "Debit(m3/S)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()












# 
# sink(stdout(), type="message")  
 
ui <- dashboardPage(
  
  dashboardHeader(title = "MATRIOCHKAS DATA DASHBOARD", titleWidth = 400, dropdownMenuOutput("messageMenu")
                  
                  # dropdownMenu(type = "messages",
                  #              messageItem(
                  #                from = "Sales Dept",
                  #                message = "Sales are steady this month."
                  #              ),
                  #              messageItem(
                  #                from = "New User",
                  #                message = "How do I register?",
                  #                icon = icon("question"),
                  #                time = "13:45"
                  #              ),
                  #              messageItem(
                  #                from = "Support",
                  #                message = "The new server is ready.",
                  #                icon = icon("life-ring"),
                  #                time = "2014-12-01"
                  #              )
                  # ),
                  # 
                  # dropdownMenu(type = "notifications",
                  #              notificationItem(
                  #                text = "5 new users today",
                  #                icon("users")
                  #              ),
                  #              notificationItem(
                  #                text = "12 items delivered",
                  #                icon("truck"),
                  #                status = "success"
                  #              ),
                  #              notificationItem(
                  #                text = "Server load at 86%",
                  #                icon = icon("exclamation-triangle"),
                  #                status = "warning"
                  #              )
                  # ),
                  # 
                  # 
                  # dropdownMenu(type = "tasks", badgeStatus = "success",
                  #              taskItem(value = 90, color = "green",
                  #                       "Documentation"
                  #              ),
                  #              taskItem(value = 17, color = "aqua",
                  #                       "Project X"
                  #              ),
                  #              taskItem(value = 75, color = "yellow",
                  #                       "Server deployment"
                  #              ),
                  #              taskItem(value = 80, color = "red",
                  #                       "Overall project"
                  #              )
                  # )
                  
                   
                  
  ),
  
  dashboardSidebar(
    width = 350,
    sidebarMenu(
      menuItem("Site 1: Noue Dumont", tabName = "dumont", icon = icon("dashboard")),
      menuItem("Site 2: Bassin BO3", icon = icon("th"), tabName = "BO3"     ),
      menuItem("Site 3: Bassin du Vertou", icon = icon("file-code-o"),tabName = "Vertou")
      ,
      menuItem("Localisation des sites", icon = icon("map-marked-alt"),tabName = "Carto"),
      menuItem("A propos", icon = icon("user-friends"),tabName = "About")
    )
    
    
  ),
  
  dashboardBody
  
  (
    
    #    fluidRow(column(1)
    
    #   box(plotOutput("plot1")),
    
    
    #     box(
    
    #      sliderInput("slider", "Slider input:", 1, 100, 50),
    #      textInput("text", "Text input:")
    #       ),
    
    #      box (title = "Physico-chimie", status = "warning", 
    
    #  "Box content here", br(), "More box content",
    #       #            #       sliderInput("slider", "Slider input:", 1, 100, 50),
    #     textInput("text", "Text input:")
    #        ),
    
    #        box(
    #       title = "Debit-Entree", status = "success", solidHeader = TRUE,
    #     "Box content here", br(), "More box content",
    #         sliderInput("slider", "Slider input:", 1, 100, 50),
    #        textInput("text", "Text input:")
    #       ),
    #         box(
    #       title = "Debit-Sortie", status = " danger", solidHeader = TRUE,
    #      "Box content here", br(), "More box content",
    #      sliderInput("slider", "Slider input:", 1, 100, 50),
    #      textInput("text", "Text input:")
    #     ),
    
    tabItems(
      tabItem(
        
        tabName = "dumont",
        h2("Noue centralisée Standard de Nantes/Site Dumont"),
        
        box( width=NULL,
             title = "Debit Amont", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("Noue_Dumont_Debit_Amont_2019",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dynoue_dumont_debit_amont_2019",width = "100%")
                    ),
                    tabPanel("Noue_Dumont_Debit_Amont2018",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dynoue_dumont_debit_amont_2018",width = "100%")
                    ),
                    tabPanel("Noue_Dumont_Debit_Amont2017",  
                             
                                  #dygraphOutput("plotmehere", width = "100%"),
                             
                            dygraphOutput("dynoue_dumont_debit_amont_2017",width = "100%")
                   ),
                    
                    tabPanel("Données", 
                             
                             # selectInput("dataset_deb_noue_amont", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Amont", "2018_Noue_Deb_Amont","2017_Noue_Deb_Amont")),br(),
                             
                             selectInput("dataset_deb_noue_Dum_amont", "Choix des jeux de données",
                                         choices = c("2019_Noue_Dum_Deb_Amont", "2018_Noue_Dum_Deb_Amont","2017_Noue_Dum_Deb_Amont")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_noueamont", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_debit_dumont_Amont'))
                    
                    
                    
                    
                    # dataTableOutput('mytableJournalier'))
                    
             )
        ),
        
        box( width=NULL,
             title = "Debit Aval", status = "success", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("Noue_Dumont_Debit_Aval2019",  
                             
                             dygraphOutput("dynoue_dumont_debit_aval_2019",width = "100%")
                    ),
                    
                     tabPanel("Noue_Dumont_Debit_Aval_2018",  
                             
                              dygraphOutput("dynoue_dumont_debit_aval_2018",width = "100%")
                    ),
                     tabPanel("Noue_Dumont_Debit_Aval_2017",  
                             
                             dygraphOutput("dynoue_dumont_debit_aval_2017",width = "100%")
                     ),
                     tabPanel("Noue_Dumont_Debit_Aval_2016",  
                             
                              dygraphOutput("dynoue_dumont_debit_aval_2016",width = "100%")
                    ),
                     tabPanel("Noue_Dumont_Debit_Aval_2015",  
                              
                              dygraphOutput("dynoue_dumont_debit_aval_2015",width = "100%")
                     ),
                     tabPanel("Noue_Dumont_Debit_Aval_2014",  
                              
                              dygraphOutput("dynoue_dumont_debit_aval_2014",width = "100%")
                     ),
                    tabPanel("Noue_Dumont_Debit_Aval_2013",  
                              
                              dygraphOutput("dynoue_dumont_debit_aval_2013",width = "100%")
                     ),
                    
                    
                    tabPanel("Données", 
                             
                             
                             selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                                         choices = c("2019_Noue_Dum_Deb_Aval", "2018_Noue_Dum_Deb_Aval", "2017_Noue_Dum_Deb_Aval", "2016_Noue_Dum_Deb_Aval", "2015_Noue_Dum_Deb_Aval", "2014_Noue_Dum_Deb_Aval", "2013_Noue_Dum_Deb_Aval")),br(),
                             
                             # selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             downloadButton("BtdownloadData_noueaval", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_debit_dumont_Aval'))
                    
             )
        ),
        
        
        box( width=NULL,
             title = "Physico-Chimie", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("HAP (μg/l)",
                             
                             
                             amChartsOutput(outputId = "PC_HAP_Bot_Chez", width = "50%", height = 600)
                           
                               #,  
                             
                          #   dygraphOutput("physicochimie", width = "100%",height = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    
                    
                    tabPanel("Metaux (μg/l)",
                             
                             #,  
                             
                         
                             plotlyOutput("PC_MTX_Bot_Chez", width = "70%",height = 600)
                           
                    ),
                    
                    tabPanel("Pesticides (μg/l)",
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             plotlyOutput("PC_PESTI_Bot_Chez",width = "80%",height = 700)
                             
                    ), 
                    
                    tabPanel("Données"
                             
                             , 
                             
                             
                             selectInput("dataset_pc_Ecoquart", "Choix des jeux de données:",
                                         choices = c("HAP", "Metaux", "Pesticides")),br(),
                             
                             # selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             downloadButton("BtdownloadData_pc_Ecoquart", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_pc_Ecoquart'))
                             
                             
                    
                    
             )
        )
        
        #      infoBox("New Orders", 10 * 2, icon = icon("credit-card"), fill = TRUE),
        #     infoBoxOutput("progressBox2"),
        #     infoBoxOutput("approvalBox2")
        
        
        #       ),
        # 
        # fluidRow(
        #   tabBox(
        #     title = "First tabBox",
        #     
        #     id = "tabset1", height = "250px",
        #     tabPanel("Tab1", "First tab content"),
        #     tabPanel("Tab2", "Tab content 2")
        #   ),
        #   
        #   #   infoBox("New Orders", 10 * 2, icon = icon("credit-card")),
        #   # Dynamic infoBoxes
        #   #    infoBoxOutput("progressBox"),
        #   #    infoBoxOutput("approvalBox"),
        #   tabBox(
        #     side = "right", height = "250px",
        #     selected = "Tab3",
        #     tabPanel("Tab1", "Tab content 1"),
        #     tabPanel("Tab2", "Tab content 2"),
        #     tabPanel("Tab3", "Note that when side=right, the tab order is reversed.")
        #   ),
        #   
        #   tabBox(
        #     # Title can include an icon
        #     title = tagList(shiny::icon("gear"), "tabBox status"),
        #     tabPanel("Tab1",
        #              "Currently selected tab from first box:",
        #              verbatimTextOutput("tabset1Selected")
        #     ),
        #     tabPanel("Tab2", "Tab content 2")
        #   )
        # )
      ) , #Fin du  tabItem(Noue)
      
      #prochaines étape BO3 et VAB
      tabItem(
        
        tabName = "BO3",
        h2("Bassin sec Coueron"),
        
        #AjoutBO3
        box( width=NULL,
             title = "Debit Amont", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("BO3_Debit_Amont_2018",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_BO3_amont_2018",width = "100%")
                    ),
                    tabPanel("BO3_Debit_Amont_2017",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_BO3_amont_2017",width = "100%")
                    ),
                    tabPanel("BO3_Debit_Amont_2016",  
                             
                             #dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_BO3_amont_2016",width = "100%")
                    ),
                    
                    tabPanel("Données", 
                             
                             # selectInput("dataset_deb_noue_amont", "Choix des jeux de données:",
                             #             choices = c("2018_BO3_Deb_Amont", "2017_BO3_Deb_Amont","2016_Noue_Deb_Amont")),br(),
                             
                             selectInput("dataset_deb_BO3_amont", "Choix des jeux de données:",
                                         choices = c("2018_BO3_Deb_Amont", "2017_BO3_Deb_Amont","2016_BO3_Deb_Amont")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_BO3amont", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_BO3_Amont'))
                    
                    
                    
                    
                    # dataTableOutput('mytableJournalier'))
                    
             )
        ),
        
        box( width=NULL,
             title = "Debit Aval", status = "success", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("BO3_Debit_Aval_2019",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_BO3_aval_2019",width = "100%")
                    ),
                    tabPanel("BO3_Debit_Aval_2018",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_BO3_aval_2018",width = "100%")
                    ),
                    tabPanel("BO3_Debit_Aval_2017",  
                             
                             #dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_BO3_aval_2017",width = "100%")
                    ),
                    
                    tabPanel("Données", 
                             
                             # selectInput("dataset_deb_noue_amont", "Choix des jeux de données:",
                             #             choices = c("2018_BO3_Deb_Amont", "2017_BO3_Deb_Amont","2016_Noue_Deb_Amont")),br(),
                             
                             selectInput("dataset_deb_BO3_aval", "Choix des jeux de données:",
                                         choices = c("2019_BO3_Deb_Aval", "2018_BO3_Deb_Aval","2017_BO3_Deb_Aval")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_BO3aval", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_BO3_Aval'))
                    
                    
                    
                    
                    # dataTableOutput('mytableJournalier'))
                    
             )
        ),
        
        box( width=NULL,
             title = "Physico-Chimie", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("HAP (μg/l)",
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             plotlyOutput("PC_HAP_BO3"  )
                             
                    ),
                    
                    tabPanel("Métaux (μg/l)",
                             
                             plotlyOutput("PC_MTX_BO3", width = "80%",height = 600)
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    
                    tabPanel("Pesticides (μg/l)",
                             
                             plotlyOutput("PC_PESTI_BO3", width = "80%",height = 700)
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    
                    
                    tabPanel("Données"
                             
                             , 
                             
                             
                             selectInput("dataset_pc_BO3", "Choix des jeux de données:",
                                         choices = c("HAP", "Metaux", "Pesticides")),br(),
                             
                             # selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             downloadButton("BtdownloadData_pc_BO3", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_pc_BO3'))
                    
             )
        )
        #FinAjoutBO3
        
        
      ),#Fin du  tabItem(BO3)
      
      tabItem(
        
        tabName = "Vertou",
        h2("Bassin en eau Vertou"),
        #Ajout VaB
        
        box( width=NULL,
             title = "Debit Amont", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("VaB_Debit_Amont_2019",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_VaB_amont_2019",width = "100%")
                    ),
                    tabPanel("VaB_Debit_Amont_2018",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_VaB_amont_2018",width = "100%")
                    ),
                    tabPanel("VaB_Debit_Amont_2017",  
                             
                             #dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dyDebit_VaB_amont_2017",width = "100%")
                    ),
                    
                    tabPanel("Données", 
                             
                             
                             
                             selectInput("dataset_deb_VaB_amont", "Choix des jeux de données:",
                                         choices = c("2019_VaB_Deb_Amont", "2018_VaB_Deb_Amont","2017_VaB_Deb_Amont")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_VaBamont", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_VaB_Amont'))
                    
                    
                    
                    
                    # dataTableOutput('mytableJournalier'))
                    
             )
        ),
        
        box( width=NULL,
             title = "Debit Aval", status = "success", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("VaB_Debit_Aval2019",  
                             
                             dygraphOutput("dyDebit_VaB_aval_2019",width = "100%")
                    ),
                    
                    tabPanel("VaB_Debit_Aval2018",  
                             
                             dygraphOutput("dyDebit_VaB_aval_2018",width = "100%")
                    ),
                    tabPanel("VaB_Debit_Aval2017",  
                             
                             dygraphOutput("dyDebit_VaB_aval_2017",width = "100%")
                    ),
                    
                    
                    tabPanel("Données", 
                             
                             
                             selectInput("dataset_VaB_Deb_aval", "Choix des jeux de données:",
                                         choices = c("2019_VaB_Deb_Aval", "2018_VaB_Deb_Aval", "2017_VaB_Deb_Aval")),br(),
                             
                             # selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             downloadButton("BtdownloadData_VaBaval", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_VaB_Aval'))
                    
             )
        ),
        
        
        box( width=NULL,
             title = "Physico-Chimie", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("HAP (μg/l)",
                             
                             plotlyOutput("PC_HAP_VAB"  )
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    
                    
                    tabPanel("Métaux (μg/l)",
                             
                             plotlyOutput("PC_MTX_VAB", width = "80%",height = 600)
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    tabPanel("Pesticides (μg/l)",
                             
                             plotlyOutput("PC_PESTI_VAB", width = "80%",height = 700)
                             
                             #,  
                             
                             #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    
                    tabPanel("Données"
                             
                             , 
                             
                             
                             selectInput("dataset_pc_VAB", "Choix des jeux de données:",
                                         choices = c("HAP", "Metaux", "Pesticides")),br(),
                             
                             # selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             downloadButton("BtdownloadData_pc_VAB", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_pc_VAB'))
                    
             )
        )
        
        
        #fin ajout Ajout VaB
      ),#Fin du  tabItem(Vertou)
      
      tabItem(
        
        tabName = "Carto",
        h2("Localisation des sites"),br(),
        leafletOutput("macarte",width = "100%",height = 1000)
        
        
        
      ),
      #Fin du  tabItem(Carto)
      
      
      tabItem(
        
        tabName = "About",
        h1("Projet Matriochkas"),br(),br(),
        h2(" F. Rodriguez, V. Ruban - Laboratoire Eau et Environnement - Juillet 2019"),br(),br(),
        
        HTML('<center><img src="logo_agence_eau.png" hspace="20"><img src="logo_matriochkas.png" hspace="20"> <img src="logo_afb.png"></center>'),br(),br(),
        
 
        
        
        h2("Evaluation des performances d'ouvrages type"),br(),
        
        h3("Résumé"),br(),
        h4("
          Trois types d’ouvrages : un bassin sec, un basin en eau et une noue, situés dans des contextes différents ont été suivis entre août 2017 et décembre 2018. 
          Une dizaine d’échantillons a été analysée pour chaque site. Les concentrations en matières en suspension (MES) sont généralement faibles. 
          Pour l’ensemble des ouvrages, les concentrations en métaux trace mesurées dans les eaux en entrée et sortie dépassent fréquemment les normes de qualité environnementale. 
          Les métaux les plus abondants sont Ti > Zn > Sr > As / Cu pour les bassins et Zn > Sr > Ti > Cu > Ni pour la noue. Quel que soit l’ouvrage on observe une grande variabilité des concentrations, tant en entrée qu’en sortie.
          Quel que soit l’ouvrage, on n’observe peu ou pas d’abattement des concentrations en métaux, en lien avec les faibles concentrations en MES. ", align="justify"),
        
        h4("Les concentrations en HAP sont faibles dans l’ensemble mais le Benzo[a]pyrène dépasse les normes en sortie pour le bassin sec et la noue. 
        Ces concentrations sont inférieures à celles généralement rapportées pour d’autres bassins dans des contextes semblables.
        La configuration des ouvrages, en particulier celle du bassin sec (fossé interceptant une partie des effluents destinés au bassin) peut expliquer cette constatation. 
        Sept pesticides sont quantifiés pour le bassin sec, le glyphosate dépasse les normes de qualité. 
        Pour le bassin en eau, 11 pesticides sont quantifiés, (dépassement pour le CYPER et le LMBD). C’est sur la noue, située dans un écoquartier, que paradoxalement le nombre de pesticides est le plus élevé (18) avec 6 molécules dépassant les normes. On ne constate pas d’abattement des concentrations.
          En termes d’abattement des flux de polluants, la noue semble être plus performante mais il faut garder présent à l’esprit que ces abattements doivent être relativisés en raison des incertitudes liées au débit et à la mesure analytique et qui sont très rarement pris en compte.
          
          ", align="justify"),br(),
        h3("MOTS CLEF :"),
         h4("Bassin sec, bassin en eau, noue, polluants, métaux trace, HAP, pesticides"),br(),
        
        
        HTML('<center><img src="logo_cstb.png"></center>')
       
        
          
          
          
        
        
       
        
        
      )
      
      
      
    )  # Fin des tabItems()
    
    
    
    
    
  )#Fin du dashboardBody()
  
  
  
  
  
  
  
)#Fin du dashboardPage








server <- function(input, output) {
  
  #Debits
  # output$debits <- renderUI({
  #   #appel depuis le fichier exel_format.R
  #   htmltools::browsable(htmltools::tagList(dy_graph_Borja))
  # })
  
  #affichage dygraph Noue Dumont amont
  output$dynoue_dumont_debit_amont_2019 <- renderDygraph({
    dygrph_Debit_Dumont_amont_2019
  })
  output$dynoue_dumont_debit_amont_2018 <- renderDygraph({
    dygrph_Debit_Dumont_amont_2018
  })
  output$dynoue_dumont_debit_amont_2017 <- renderDygraph({
    dygrph_Debit_Dumont_amont_2017
  })
  
  datasetInput_debit_dum_amont <- reactive({
    switch(input$dataset_deb_noue_Dum_amont,
           "2019_Noue_Dum_Deb_Amont" = Debit_Dumont_amontH_tab_2019,
           "2018_Noue_Dum_Deb_Amont" = Debit_Dumont_amontH_tab_2018,
           "2017_Noue_Dum_Deb_Amont" = Debit_Dumont_amontH_tab_2017 
           )
  })
  
  output$mytable_debit_dumont_Amont = renderDataTable({
    datasetInput_debit_dum_amont()
    
  })
  
  
  output$BtdownloadData_noueamont <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_noue_Dum_amont, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_dum_amont(), file, row.names = FALSE)
    }
  )
  
  
  #affichage dygraph  Noue Dumont aval
  output$dynoue_dumont_debit_aval_2019 <- renderDygraph({
    dygrph_Debit_Dumont_aval_2019
  })
  output$dynoue_dumont_debit_aval_2018<- renderDygraph({
    dygrph_Debit_Dumont_aval_2018
  })
   output$dynoue_dumont_debit_aval_2017 <- renderDygraph({
     dygrph_Debit_Dumont_aval_2017
   })
   
   output$dynoue_dumont_debit_aval_2016 <- renderDygraph({
     dygrph_Debit_Dumont_aval_2016
   })
   
   output$dynoue_dumont_debit_aval_2015 <- renderDygraph({
     dygrph_Debit_Dumont_aval_2015
  })
   output$dynoue_dumont_debit_aval_2014 <- renderDygraph({
     dygrph_Debit_Dumont_aval_2014
   })
   output$dynoue_dumont_debit_aval_2013 <- renderDygraph({
     dygrph_Debit_Dumont_aval_2013
   })
   
  #Affichage graphes physicochimie BOTière CHez
   
   #id=PC_HAP_Bot_Chez graph= graph_HAP_Bot_Chez 
   output$PC_HAP_Bot_Chez <- renderAmCharts({
     # minimal example
    
     graph_HAP_Bot_Chez
     
   })
  
   
   output$PC_MTX_Bot_Chez <- renderPlotly({
     # minimal example
     
     graph_Mtx_Bot_Chez
     
   })
   
   
   output$PC_PESTI_Bot_Chez <- renderPlotly({
     # minimal example
     
     graph_Pesti_Bot_Chez
     
   })
   
   #Affichage graphes physicochimie BO3
   
   
   output$PC_HAP_BO3 <- renderPlotly({
     # minimal example
     
     graph_HAP_BO3
     
   })
   
   
   output$PC_MTX_BO3 <- renderPlotly({
     # minimal example
     
    
     graph_Mtx_BO3
     
   })
   
   
   output$PC_PESTI_BO3 <- renderPlotly({
     # minimal example
     
     graph_Pesti_BO3
     
   })
   
   #Affichage graphes physicochimie VAB
   
   output$PC_HAP_VAB <- renderPlotly({
     # minimal example
     
     graph_HAP_VAB
     
   })
   
   
   output$PC_MTX_VAB <- renderPlotly({
     # minimal example
     
     
     graph_Mtx_VAB
     
   })
   
   
   output$PC_PESTI_VAB <- renderPlotly({
     # minimal example
     
     graph_Pesti_VAB
     
   })
   
   #Données tableau Ecoquartier
   
   datasetInput_pc_Ecoquart <- reactive({
     switch(input$dataset_pc_Ecoquart,
            "HAP" =  dfPC_hap_EcoQuaChez,
            "Metaux" = dfPC_metx_EcoQuaChez_brut,
            "Pesticides" = dfPC_pesti_EcoQuaChez 
     )
   })
   
   output$mytable_pc_Ecoquart = renderDataTable({
     datasetInput_pc_Ecoquart()
     
   })
   
   
   output$BtdownloadData_pc_Ecoquart <- downloadHandler(
     filename = function() {
       paste(input$dataset_pc_Ecoquart, ".csv", sep = "")
     },
     content = function(file) {
       write.csv(datasetInput_pc_Ecoquart(), file, row.names = FALSE)
     }
   )
   
   #Données tableau BO3
   
   datasetInput_pc_BO3 <- reactive({
     switch(input$dataset_pc_BO3,
            "HAP" =  dfPC_hap_BO3,
            "Metaux" = dfPC_metx_BO3_brut,
            "Pesticides" = dfPC_pesti_BO3 
     )
   })
   
   output$mytable_pc_BO3 = renderDataTable({
     datasetInput_pc_BO3()
     
   })
   
   
   output$BtdownloadData_pc_BO3 <- downloadHandler(
     filename = function() {
       paste(input$dataset_pc_BO3, ".csv", sep = "")
     },
     content = function(file) {
       write.csv(datasetInput_pc_BO3(), file, row.names = FALSE)
     }
   )
    
   
   
   #Données tableau VAB
   
   datasetInput_pc_VAB <- reactive({
     switch(input$dataset_pc_VAB,
            "HAP" =  dfPC_hap_vAB,
            "Metaux" = dfPC_metx_VAB_brut,
            "Pesticides" = dfPC_pesti_VAB 
     )
   })
   
   output$mytable_pc_VAB = renderDataTable({
     datasetInput_pc_VAB()
     
   })
   
   
   output$BtdownloadData_pc_VAB<- downloadHandler(
     filename = function() {
       paste(input$dataset_pc_VAB, ".csv", sep = "")
     },
     content = function(file) {
       write.csv(datasetInput_pc_VAB(), file, row.names = FALSE)
     }
   )
   
   
  #Niveau
  
  
  # output$Niveaux <- renderUI({
  #   #appel depuis le fichier exel_format.R
  #   htmltools::browsable(htmltools::tagList(dy_graph_Borja_iwldwl))
  # })
 
  
   #noue aval
   datasetInput_debit_dum_aval<- reactive({
    switch(input$dataset_deb_noue_aval,
           "2019_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2019,
           "2018_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2018, 
           "2017_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2017,
           "2016_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2016,
           "2015_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2015,
           "2014_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2014,
           "2013_Noue_Dum_Deb_Aval" = Debit_Dumont_avalH_tab_2013
           
           )
  })
  
  
  
  
  output$mytable_debit_dumont_Aval= renderDataTable({
    datasetInput_debit_dum_aval()
    
  })
  
  
  
  
  
  output$BtdownloadData_noueaval <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_noue_aval, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_aval(), file, row.names = FALSE)
    }
  )
  
  
  
  
  
  #Rendu BO3 amont
  
  
  
  output$dyDebit_BO3_amont_2018 <- renderDygraph({
    dygrph_Debit_BO3_amont_2018
  })
  output$dyDebit_BO3_amont_2017 <- renderDygraph({
    dygrph_Debit_BO3_amont_2017
  })
  output$dyDebit_BO3_amont_2016 <- renderDygraph({
    dygrph_Debit_BO3_amont_2016
  })
  
  datasetInput_debit_BO3_amont <- reactive({
    switch(input$dataset_deb_BO3_amont,
           "2018_BO3_Deb_Amont" = Debit_BO3_amontH_tab_2018,
           "2017_BO3_Deb_Amont" = Debit_BO3_amontH_tab_2017,
           "2016_BO3_Deb_Amont" = Debit_BO3_amontH_tab_2016 
    )
  })
  
  output$mytable_BO3_Amont = renderDataTable({
    datasetInput_debit_BO3_amont()
    
  })
  
  
  output$BtdownloadData_BO3amont <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_BO3_amont, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_BO3_amont(), file, row.names = FALSE)
    }
  )
  
  
  
  
  #Rendu BO3 amont
  
  output$dyDebit_BO3_aval_2019 <- renderDygraph({
    dygrph_Debit_BO3_aval_2019
  })
  output$dyDebit_BO3_aval_2018 <- renderDygraph({
    dygrph_Debit_BO3_aval_2018
  })
  output$dyDebit_BO3_aval_2017 <- renderDygraph({
    dygrph_Debit_BO3_aval_2017
  })
  
  datasetInput_debit_BO3_aval <- reactive({
    switch(input$dataset_deb_BO3_aval,
           "2019_BO3_Deb_Aval" = Debit_BO3_avalH_tab_2019,
           "2018_BO3_Deb_Aval" = Debit_BO3_avalH_tab_2018,
           "2017_BO3_Deb_Aval" = Debit_BO3_avalH_tab_2017 
    )
  })
  
  output$mytable_BO3_Aval = renderDataTable({
    datasetInput_debit_BO3_aval()
    
  })
  
  
  output$BtdownloadData_BO3aval <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_BO3_aval, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_BO3_aval(), file, row.names = FALSE)
    }
  )
  
  
  
  
  #Rendu VaB amont
  
  
  
  output$dyDebit_VaB_amont_2019 <- renderDygraph({
    dygrph_Debit_VaB_amont_2019
  })
  output$dyDebit_VaB_amont_2018 <- renderDygraph({
    dygrph_Debit_VaB_amont_2018
  })
  output$dyDebit_VaB_amont_2017 <- renderDygraph({
    dygrph_Debit_VaB_amont_2017
  })
  
  datasetInput_debit_VaB_amont <- reactive({
    switch(input$dataset_deb_VaB_amont,
           "2019_VaB_Deb_Amont" = Debit_VaB_amontH_tab_2019,
           "2018_VaB_Deb_Amont" = Debit_VaB_amontH_tab_2018,
           "2017_VaB_Deb_Amont" = Debit_VaB_amontH_tab_2017 
    )
  })
  
  output$mytable_VaB_Amont = renderDataTable({
    datasetInput_debit_VaB_amont()
    
  })
  
  
  output$BtdownloadData_VaBamont <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_VaB_amont, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_VaB_amont(), file, row.names = FALSE)
    }
  )
  
  
  
  
  
  
  #Rendu VaB aval
  
  
  
  output$dyDebit_VaB_aval_2019 <- renderDygraph({
    dygrph_Debit_VaB_aval_2019
  })
  output$dyDebit_VaB_aval_2018 <- renderDygraph({
    dygrph_Debit_VaB_aval_2018
  })
  output$dyDebit_VaB_aval_2017 <- renderDygraph({
    dygrph_Debit_VaB_aval_2017
  })
  
  datasetInput_debit_VaB_aval <- reactive({
    switch(input$dataset_VaB_Deb_aval,
           "2019_VaB_Deb_Aval" = Debit_VaB_avalH_tab_2019,
           "2018_VaB_Deb_Aval" = Debit_VaB_avalH_tab_2018,
           "2017_VaB_Deb_Aval" = Debit_VaB_avalH_tab_2017 
    )
  })
  
  output$mytable_VaB_Aval= renderDataTable({
    datasetInput_debit_VaB_aval()
    
  })
  
  
  output$BtdownloadData_VaB_aval <- downloadHandler(
    filename = function() {
      paste(input$dataset_VaB_Deb_aval, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_VaB_aval(), file, row.names = FALSE)
    }
  )
  
  #
  
  
  
  
  #physico-chimie
  
  # output$physicochimie <- renderDygraph({
  #   
  #   
  #   dygraph(don_borja_phys_ok) %>%
  #     dySeries("Conductivite", label = "Conductivite(µS)") %>%
  #     dySeries("PH", label = "PH") %>%
  #     dySeries("Sediments", label = "Sediments(mg/l)") %>%
  #     dyOptions(stackedGraph = TRUE) %>%
  #     dyRangeSelector(height = 20)
  # })
  
  
  
  
  
  
  
  # output$mytable_pc = renderDataTable({
  #   
  #   don_borja_phys_ok
  #   
  # })
  # 
  # 
  # Telechargement dun fichier unique
  # 
  # output$downloadData_pc <- downloadHandler(
  #   filename = function() {
  #     paste("borja_pc", ".csv", sep = "")
  #   },
  #   content = function(file) {
  #     write.csv( borja_phys , file, row.names = FALSE)
  #   }
  # )
  
  
  #generation de la carte
  data_coordo <- reactive({
    x <- sites_matri
  })
  
  output$macarte<- renderLeaflet({
    df <- data_coordo()
    
    m <- leaflet(data = df) %>%
      addTiles() %>%
      addMarkers(lng = ~Longitude,
                 lat = ~Latitude,
                 popup = paste("Station:", df$Num_station, "<br>",
                               "Site:", df$Nom_Site))
    m
  })
  
  
  
  
  
  # output$mytableJournalier = renderDataTable({
  #   borja_dd
  #   
  # })
  
  #       output$progressBox <- renderInfoBox({
  #      infoBox(
  #         "Progress", paste0(25 + input$count, "%"), icon = icon("list"),
  #         color = "purple"
  #      )
  #         })
  
  #   output$approvalBox <- renderInfoBox({
  #     infoBox(
  #     "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
  #     color = "yellow"
  #     )
  #   })
  # 
  #   output$progressBox2 <- renderInfoBox({
  #     infoBox(
  #     "Progress", paste0(25 + input$count, "%"), icon = icon("list"),
  #     color = "purple", fill = TRUE
  #     )
  #   })
  # 
  # output$approvalBox2 <- renderInfoBox({
  #   infoBox(
  #   "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
  #   color = "yellow", fill = TRUE
  #   )
  # })
  
  
}


shinyApp(ui, server)