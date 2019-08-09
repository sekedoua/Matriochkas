#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(readxl)

borja_id_temp_2019 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2019_ord.rds")
borja_id_temp_2018 <-readRDS(file="./Donnees_test/EcoQUA_15/Noue_Dumont_Amont_Debit_2018_ord.rds")

dygrph_noue_amont_2019<- dygraph(borja_id_temp_2019, main = "Debit Amont 2019", group = "Debit Amont Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()
dygrph_noue_amont_2018<-dygraph(borja_id_temp_2018, main = "Debit Amont 2018", group = "Debit Amont Noue")%>% dyAxis("y", label = "Debit(m3/s)") %>% dyAxis("y2", label = "Qualite")%>%  dySeries("Debit", axis = 'y')%>%dySeries("Code_Quali", axis = 'y2')%>% dyRangeSelector()


# Define UI for application that draws a histogram
ui <- 
  dashboardPage(
    
    dashboardHeader(title = "MATRIOCHKAS DATA DASHBOARD", titleWidth = 400
                    

                    dashboardBody
                    
                    (
                      tabItems(
                        tabItem(
                          
                          
                          
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
                        #fin du dashboardbody
                        
                      )
                    )
    )
 
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
  
  output$dydebiamont2019 <- renderDygraph({
    dygrph_noue_amont_2019
  })
  output$dydebiamont2018 <- renderDygraph({
    dygrph_noue_amont_2018
  })}

# Run the application 
shinyApp(ui = ui, server = server)

