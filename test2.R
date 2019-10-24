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

# A demonstration of clicking, hovering, and brushing
shinyApp(
  ui = basicPage(
    fluidRow(
      column(width = 4,
             plotOutput("plot", height=300,
                        click = "plot_click",  # Equiv, to click=clickOpts(id="plot_click")
                        hover = hoverOpts(id = "plot_hover", delayType = "throttle"),
                        brush = brushOpts(id = "plot_brush")
             ),
             h4("Clicked points"),
             tableOutput("plot_clickedpoints"),
             h4("Brushed points"),
             tableOutput("plot_brushedpoints")
      ),
      column(width = 4,
             verbatimTextOutput("plot_clickinfo"),
             verbatimTextOutput("plot_hoverinfo")
      ),
      column(width = 4,
             wellPanel(actionButton("newplot", "New plot")),
             verbatimTextOutput("plot_brushinfo")
      )
    )
  ),
  server = function(input, output, session) {
    data <- reactive({
      input$newplot
      # Add a little noise to the cars data so the points move
      cars + rnorm(nrow(cars))
    })
    output$plot <- renderPlot({
      d <- data()
      plot(d$speed, d$dist)
    })
    output$plot_clickinfo <- renderPrint({
      cat("Click:\n")
      str(input$plot_click)
    })
    output$plot_hoverinfo <- renderPrint({
      cat("Hover (throttled):\n")
      str(input$plot_hover)
    })
    output$plot_brushinfo <- renderPrint({
      cat("Brush (debounced):\n")
      str(input$plot_brush)
    })
    output$plot_clickedpoints <- renderTable({
      # For base graphics, we need to specify columns, though for ggplot2,
      # it's usually not necessary.
      res <- nearPoints(data(), input$plot_click, "speed", "dist")
      if (nrow(res) == 0)
        return()
      res
    })
    output$plot_brushedpoints <- renderTable({
      res <- brushedPoints(data(), input$plot_brush, "speed", "dist")
      if (nrow(res) == 0)
        return()
      res
    })
  }
)


