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

# Only run these examples in interactive R sessions
 
  
  # A basic shiny app with a plotOutput
  shinyApp(
    ui = fluidPage(
      sidebarLayout(
        sidebarPanel(
          actionButton("newplot", "New plot")
        ),
        mainPanel(
          plotOutput("plot")
        )
      )
    ),
    server = function(input, output) {
      output$plot <- renderPlot({
        input$newplot
        # Add a little noise to the cars data
        cars2 <- cars + rnorm(nrow(cars))
        plot(cars2)
      })
    }
  )
  
 