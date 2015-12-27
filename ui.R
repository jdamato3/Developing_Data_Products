library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Spherical Specifications"),
  sidebarPanel(
    numericInput('radius', 'Radius (unitless)', 0, min = 0, max = 100, step = 5),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results'),
    h4('Radius of Sphere Entered'),
    verbatimTextOutput("inputValue"),
    h4('Diameter of Sphere'),
    verbatimTextOutput("diameter"),
    h4('Volume of Sphere'),
    verbatimTextOutput("volume"),
    h4('Surface Area of Sphere'),
    verbatimTextOutput("SA")
  )
))