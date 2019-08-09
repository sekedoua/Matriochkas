source("carto.R")
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

 borja_id_2019<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 borja_id_2018<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# borja_id_2017<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2017.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
# 
 borja_dd_2019<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2019_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
 borja_dd_2018<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2018_5min.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
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

 

 borja_id_temp_2019 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019_ord_5min.rds")
 borja_id_temp_2018 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018_ord_5min.rds")
# borja_id_temp_2017 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2017_ord.rds")
# # 
# # 
# # 
 borja_dd_temp_2019<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2019_ord_5min.rds")
 borja_dd_temp_2018<-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Aval_Debit_2018_ord_5min.rds")
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







dygrph_noue_amont_2019<- dygraph(borja_id_temp_2019, main = "Debit Amont 2019")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
dygrph_noue_amont_2018<-dygraph(borja_id_temp_2018, main = "Debit Amont 2018")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_amont_2017<-dygraph(borja_id_temp_2017, main = "Debit Amont 2017", group = "Debit Amont Noue")%>% dyAxis("y", label = "Debit(m3/S)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()


dygrph_noue_aval_2019<-dygraph(borja_dd_temp_2019, main = "Debit Aval 2019")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
dygrph_noue_aval_2018<-dygraph(borja_dd_temp_2018, main = "Debit Aval 2018")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2017<-dygraph(borja_dd_temp_2017, main = "Debit Aval 2017", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2016<-dygraph(borja_dd_temp_2016, main = "Debit Aval 2016", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2015<-dygraph(borja_dd_temp_2015, main = "Debit Aval 2015", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2014<-dygraph(borja_dd_temp_2014, main = "Debit Aval 2014", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
# dygrph_noue_aval_2013<-dygraph(borja_dd_temp_2013, main = "Debit Aval 2013", group = "Debit Aval Noue")%>% dyAxis("y", label = "Debit(m3/S)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
#avant :  dygrph_noue_aval_2013<-dygraphs::dygraph(borja_dd_temp_2013, main = "Debit Aval 2013", group = "Debit Aval  Noue")%>% dyAxis("y", label = "Debit(m3/S)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()













 
 
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
      menuItem("Localisation des sites", icon = icon("map-marked-alt"),tabName = "Carto")
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
                    
                    tabPanel("Noue_Debit_Amont2019",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dydebiamont2019",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Amont2018",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                             dygraphOutput("dydebiamont2018",width = "100%")
                    ),
                    #tabPanel("Noue_Debit_Amont2017",  
                             
                             #      dygraphOutput("plotmehere", width = "100%"),
                             
                   #          dygraphOutput("dydebiamont2017",width = "100%")
                  #  ),
                    
                    tabPanel("Données", 
                             
                             # selectInput("dataset_deb_noue_amont", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Amont", "2018_Noue_Deb_Amont","2017_Noue_Deb_Amont")),br(),
                             
                             selectInput("dataset_deb_noue_amont", "Choix des jeux de données:",
                                         choices = c("2019_Noue_Deb_Amont", "2018_Noue_Deb_Amont")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_noueamont", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_noue_Amont'))
                    
                    
                    
                    
                    # dataTableOutput('mytableJournalier'))
                    
             )
        ),
        
        box( width=NULL,
             title = "Debit Aval", status = "success", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("Noue_Debit_Aval2019",  
                             
                             dygraphOutput("dydebiaval2019",width = "100%")
                    ),
                    
                     tabPanel("Noue_Debit_Aval2018",  
                             
                              dygraphOutput("dydebiaval2018",width = "100%")
                    ),
                    # tabPanel("Noue_Debit_Aval2017",  
                    #          
                    #          dygraphOutput("dydebiaval2017",width = "100%")
                    # ),
                    # tabPanel("Noue_Debit_Aval2016",  
                    #          
                    #          dygraphOutput("dydebiaval2016",width = "100%")
                    # ),
                    # tabPanel("Noue_Debit_Aval2015",  
                    #          
                    #          dygraphOutput("dydebiaval2015",width = "100%")
                    # ),
                    # tabPanel("Noue_Debit_Aval2014",  
                    #          
                    #          dygraphOutput("dydebiaval2014",width = "100%")
                    # ),
                    # tabPanel("Noue_Debit_Aval2013",  
                    #          
                    #          dygraphOutput("dydebiaval2013",width = "100%")
                    # ),
                    
                    
                    tabPanel("Données", 
                             
                             
                             selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                                         choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval")),br(),
                             
                             # selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                             #             choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             downloadButton("BtdownloadData_noueaval", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_noue_Aval'))
                    
             )
        ),
        
        
        box( width=NULL,
             title = "Physico-Chimie", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("Graphiques"
                           
                               #,  
                             
                          #   dygraphOutput("physicochimie", width = "100%")
                             #plotOutput("plot5", height = 250)
                             
                    ),
                    
                    
                    
                    
                    tabPanel("Données"
                             
                             , 
                             
                             
                            # downloadButton("downloadData_pc", "Télécharger les données"),
                             br(),br()
                             #,
                             
                             
                          #   dataTableOutput('mytable_pc')     
                             
                             
                    )
                    
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
      
      
      tabItem(
        
        tabName = "BO3",
        h2("Bassin sec Coueron")
      ),#Fin du  tabItem(BO3)
      
      tabItem(
        
        tabName = "Vertou",
        h2("Bassin en eau Vertou")
      ),#Fin du  tabItem(Vertou)
      
      tabItem(
        
        tabName = "Carto",
        h2("Localisation des sites"),br(),
        leafletOutput("macarte",width = "100%",height = 1000)
        
        
        
      )#Fin du  tabItem(Carto)
      
      
      
      
      
      
    )  # Fin des tabItems()
    
    
    
    
    
  )#Fin du dashboardBody()
  
  
  
  
  
  
  
)#Fin du dashboardPage








server <- function(input, output) {
  
  #Debits
  # output$debits <- renderUI({
  #   #appel depuis le fichier exel_format.R
  #   htmltools::browsable(htmltools::tagList(dy_graph_Borja))
  # })
  
  #affichage dygraph amont
  output$dydebiamont2019 <- renderDygraph({
    dygrph_noue_amont_2019
  })
  output$dydebiamont2018 <- renderDygraph({
    dygrph_noue_amont_2018
  })
  # output$dydebiamont2017 <- renderDygraph({
  #   dygrph_noue_amont_2017
  # })
  
  datasetInput_debit_amont <- reactive({
    switch(input$dataset_deb_noue_amont,
           "2019_Noue_Deb_Amont" = borja_id_2019,
           "2018_Noue_Deb_Amont" = borja_id_2018
           #,
           #"2017_Noue_Deb_Amont" = borja_id_2017 
           )
  })
  
  output$mytable_noue_Amont = renderDataTable({
    datasetInput_debit_amont()
    
  })
  
  
  output$BtdownloadData_noueamont <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_noue_amont, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_amont(), file, row.names = FALSE)
    }
  )
  
  
  #affichage dygraph aval
  output$dydebiaval2019 <- renderDygraph({
    dygrph_noue_aval_2019
  })
  output$dydebiaval2018 <- renderDygraph({
    dygrph_noue_aval_2018
  })
  # output$dydebiaval2017 <- renderDygraph({
  #   dygrph_noue_aval_2017
  # })
  # 
  # output$dydebiaval2016 <- renderDygraph({
  #   dygrph_noue_aval_2016
  # })
  # 
  # output$dydebiaval2015 <- renderDygraph({
  #   dygrph_noue_aval_2015
  # })
  # output$dydebiaval2014 <- renderDygraph({
  #   dygrph_noue_aval_2014
  # })
  # output$dydebiaval2013 <- renderDygraph({
  #   dygrph_noue_aval_2013
  # })
  # 
  
  
  
  #Niveau
  
  
  # output$Niveaux <- renderUI({
  #   #appel depuis le fichier exel_format.R
  #   htmltools::browsable(htmltools::tagList(dy_graph_Borja_iwldwl))
  # })
 
  
   #noue aval
  datasetInput_debit_aval <- reactive({
    switch(input$dataset_deb_noue_aval,
           "2019_Noue_Deb_Aval" = borja_dd_2019,
           "2018_Noue_Deb_Aval" = borja_dd_2018
           # , 
           # "2017_Noue_Deb_Aval" = borja_dd_2017,
           # "2016_Noue_Deb_Aval" = borja_dd_2016,
           # "2015_Noue_Deb_Aval" = borja_dd_2015,
           # "2014_Noue_Deb_Aval" = borja_dd_2014,
           # "2013_Noue_Deb_Aval" = borja_dd_2013
           
           )
  })
  
  
  
  
  output$mytable_noue_Aval = renderDataTable({
    datasetInput_debit_aval()
    
  })
  
  
  
  
  
  output$BtdownloadData_noueaval <- downloadHandler(
    filename = function() {
      paste(input$dataset_deb_noue_aval, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(datasetInput_debit_aval(), file, row.names = FALSE)
    }
  )
  
  
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