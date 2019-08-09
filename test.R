
library(shiny)

library(shinydashboard)

ui <- fluidPage(
  fluidRow(
    column(4,
           sliderInput("obs", "Number of observations:",
                       min = 1, max = 1000, value = 500)
    ),
    column(8,
           plotOutput("distPlot")
    )
  )
)

server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
}

shinyApp(ui, server)

