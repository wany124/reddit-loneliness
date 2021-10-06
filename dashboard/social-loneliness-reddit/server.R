library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  model <- reactive(input$model)
  topic <- reactive(input$topic)
  
  output$docImg <- renderImage({
    docpath <- paste("stm2/documents/",topic(),".png",sep="")
    list(src=docpath,width=800,height="auto")
  },deleteFile = FALSE)
  
  output$topicTrend <- renderImage({
    docpath <- paste("stm2/trend/topic-prev-trend-",topic(),".png",sep="")
    list(src=docpath,width=500,height="auto")
  },deleteFile = FALSE)
  
  output$allTopics <- renderImage({
    docpath <- paste("stm2/stm20-topic.png",sep="")
    list(src=docpath,width=500,height="auto")
  },deleteFile = FALSE)
  
  output$covariate <- renderImage({
    docpath <- paste("stm2/cov-effect-subreddit.png",sep="")
    list(src=docpath,width=1000, heiht="auto")
  },deleteFile = FALSE)
  
  output$display <- renderUI({
    if (input$model == "stm-20"){
      # output images
      fluidRow(
        column(7,
               h4("Representative documents for this topic:"),
               br(),
               imageOutput(outputId="docImg")),
        column(4,
               h4("Topic prevalence trend: "),
               imageOutput(outputId="topicTrend"),
               h4("All Topics"),
               br(),
               imageOutput(outputId="allTopics")
        ))
    } else {
      fluidRow(
        column(2),
        column(8,
               imageOutput(outputId="covariate")
        ),
        column(2)
      )
    }
  })
})

