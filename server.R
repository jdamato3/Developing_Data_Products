library(shiny)

diameterCalc <- function(radius) radius * 2
volumeCalc <- function(radius) ( (4 / 3) * pi * radius ^ 3)
SACalc <- function(radius) ( 4 * pi * radius ^ 3 )

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$radius})
    output$diameter <- renderPrint({diameterCalc(input$radius)})
    output$volume <- renderPrint({volumeCalc(input$radius)})
    output$SA <- renderPrint({SACalc(input$radius)})
  }
)