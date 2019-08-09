ui <- dashboardPage(
  
  dashboardHeader(title = "MATRIOCHKAS DATA DASHBOARD", titleWidth = 400, dropdownMenuOutput("messageMenu")
                  

                  
                  
                  
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
    

    
    tabItems(
      tabItem(
        
        tabName = "dumont",
        h2("Noue centralisée Standard de Nantes/Site Dumont"),
        
        box( width=NULL,
             title = "Debit Amont", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("Noue_Debit_Amont2019",  
                             
                             
                             
                             dygraphOutput("dydebiamont2019",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Amont2018",  
                             
                             
                             
                             dygraphOutput("dydebiamont2018",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Amont2017",  
                             
                             
                             
                             dygraphOutput("dydebiamont2017",width = "100%")
                    ),
                    
                    tabPanel("Données", 
                             
                             
                             selectInput("dataset_deb_noue_amont", "Choix des jeux de données:",
                                         choices = c("2019_Noue_Deb_Amont", "2018_Noue_Deb_Amont","2017_Noue_Deb_Amont")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_noueamont", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_noue_Amont'))
                    
                    
                    
               
                    
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
                    tabPanel("Noue_Debit_Aval2017",  
                             
                             dygraphOutput("dydebiaval2017",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Aval2016",  
                             
                             dygraphOutput("dydebiaval2016",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Aval2015",  
                             
                             dygraphOutput("dydebiaval2015",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Aval2014",  
                             
                             dygraphOutput("dydebiaval2014",width = "100%")
                    ),
                    tabPanel("Noue_Debit_Aval2013",  
                             
                             dygraphOutput("dydebiaval2013",width = "100%")
                    ),
                    
                    
                    tabPanel("Données", 
                             
                             
                             selectInput("dataset_deb_noue_aval", "Choix des jeux de données:",
                                         choices = c("2019_Noue_Deb_Aval", "2018_Noue_Deb_Aval","2017_Noue_Deb_Aval","2016_Noue_Deb_Aval","2015_Noue_Deb_Aval","2014_Noue_Deb_Aval","2013_Noue_Deb_Aval")),br(),
                             
                             
                             
                             downloadButton("BtdownloadData_noueaval", "Télécharger les données"),br(),br(),
                             
                             
                             dataTableOutput('mytable_noue_Aval'))
                    
             )
        ),
        
        
        box( width=NULL,
             title = "Physico-Chimie", status = "info", solidHeader = TRUE,
             collapsible = TRUE,collapsed = TRUE,
             
             tabBox(width=NULL,
                    
                    tabPanel("Graphiques"
                             
 
                             
                    ),
                    
                    
                    
                    
                    tabPanel("Données"
                             
                             , 
                             
                             
   
                             br(),br()
   
                             
                             
                    )
                    
             )
        )


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
  
 
  
  #affichage dygraph amont
  output$dydebiamont2019 <- renderDygraph({
    dygrph_noue_amont_2019
  })
  output$dydebiamont2018 <- renderDygraph({
    dygrph_noue_amont_2018
  })
  output$dydebiamont2017 <- renderDygraph({
    dygrph_noue_amont_2017
  })
  
  datasetInput_debit_amont <- reactive({
    switch(input$dataset_deb_noue_amont,
           "2019_Noue_Deb_Amont" = borja_id_2019,
           "2018_Noue_Deb_Amont" = borja_id_2018,
           "2017_Noue_Deb_Amont" = borja_id_2017 )
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
  output$dydebiaval2017 <- renderDygraph({
    dygrph_noue_aval_2017
  })
  
  output$dydebiaval2016 <- renderDygraph({
    dygrph_noue_aval_2016
  })
  
  output$dydebiaval2015 <- renderDygraph({
    dygrph_noue_aval_2015
  })
  output$dydebiaval2014 <- renderDygraph({
    dygrph_noue_aval_2014
  })
  output$dydebiaval2013 <- renderDygraph({
    dygrph_noue_aval_2013
  })
  
  
  
  
  
  
  
 
  
  
  #noue aval
  datasetInput_debit_aval <- reactive({
    switch(input$dataset_deb_noue_aval,
           "2019_Noue_Deb_Aval" = borja_dd_2019,
           "2018_Noue_Deb_Aval" = borja_dd_2018, 
           "2017_Noue_Deb_Aval" = borja_dd_2017,
           "2016_Noue_Deb_Aval" = borja_dd_2016,
           "2015_Noue_Deb_Aval" = borja_dd_2015,
           "2014_Noue_Deb_Aval" = borja_dd_2014,
           "2013_Noue_Deb_Aval" = borja_dd_2013)
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
  

  
  
  
  
  
  

  
  
  #map
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
  
  
  
   
  
  
  
}


shinyApp(ui, server)