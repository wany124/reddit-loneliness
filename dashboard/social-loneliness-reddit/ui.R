
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  h1("Reddit Social Loneliness Result Dashboard"),
  
  hr(),
  
  # fluid row for inputs
  fluidRow(align="center",
           column(3),
           column(6,
                  selectInput("model", "Choose the result to display:",
                              choices = list("stm-20","covariate effect", "LIWC scores"))
           )
           
  ),
  uiOutput("display")
  
))
