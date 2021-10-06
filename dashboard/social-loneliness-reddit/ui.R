
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  h1("Reddit Social Loneliness Topic Modeling"),
  
  hr(),
  
  # fluid row for inputs
  fluidRow(align="center",
           column(5,
                  selectInput("model", "Choose the result to display:",
                              choices = list("stm-20","covariate effect"))
           ),
           column(6,
                  sliderInput("topic",
                              "Topic number: ",
                              min = 1,
                              max = 20,
                              value = 1)
           )
  ),
  uiOutput("display")
  
))
