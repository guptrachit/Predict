library(shiny)
library(datasets)
data(mtcars)

Dataset <- mtcars
PredictionModel <- lm(mpg ~ cyl + disp + hp + vs + am + gear + carb,  data=Dataset)
checker <- TRUE

shinyServer(
  function(input,output){
    printEvent <- eventReactive(input$button1,{
      selectedset <- data.frame(cyl = input$id1,
                                disp = input$id2,
                                hp = input$id3,
                                vs = switch(input$id4,V = 0,S = 1),
                                am = switch(input$id5,A = 0,M = 1),
                                gear = input$id6,
                                carb = input$id7
      )
      predmodel <<- PredictionModel
      print(paste("The Predicted Mileage is",predict(predmodel,selectedset) ))
    })
    
    
    output$predictionvalue <- renderText({
      printEvent()
    })
    
  }
)