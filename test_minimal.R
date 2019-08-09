

library(shiny)
library(shinydashboard)
library(dygraphs)

options(warn=-1)
options(digits=8)

#borja_id_2019<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
#borja_id_2018<-read.csv(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

borja_id_temp_2019 <-readRDS(file="Noue_Dumont_Amont_Debit_2019_ord.rds")
borja_id_temp_2018 <-readRDS(file="Noue_Dumont_Amont_Debit_2018_ord.rds")

dygrph_noue_amont_2019<- dygraph(borja_id_temp_2019, main = "Debit Amont 2019", group = "Debit Amont Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
dygrph_noue_amont_2018<-dygraph(borja_id_temp_2018, main = "Debit Amont 2018", group = "Debit Amont Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()

ui <- dashboardPage(
  
  
  
  
  dashboardHeader(title = 'Reporting Dashboard'),
 
  dashboardSidebar(
    width = 350,
    sidebarMenu(
      menuItem("Site 1: Noue Dumont", tabName = "dumont", icon = icon("dashboard"))
      
    )),
  
  
  
  
  
  
  dashboardBody
  
  (
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
                    )
             )
        )
      )
      
    )
  ))
  
  
  #fin du dashboardHeader
  
  
  server <- function(input, output)
  {
    
    
    
    #affichage dygraph amont
    output$dydebiamont2019 <- renderDygraph({
      dygrph_noue_amont_2019
    })
    output$dydebiamont2018 <- renderDygraph({
      dygrph_noue_amont_2018
    })
  }
  
  shinyApp(ui, server)