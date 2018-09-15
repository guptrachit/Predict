library(shiny)

shinyUI (
  pageWithSidebar (
    ##Options Pane
    headerPanel ("Vehicle MPG Prediction"),
    
    sidebarPanel (
      
      h3("Select the parameters to predict vehicles MPG"),
      numericInput("id2","Displacement",100,min = 50,max = 600,step = 10),
      numericInput("id3","Horse Power",130,min = 50,max = 350,step = 10),
      
      radioButtons("id4","Engine Type",c(
        "V" = "V",
        "S" = "S"
      )),
      radioButtons("id5","Transmission Type",c(
        "Automatic" = "A",
        "Manual" = "M"
      )) , 
      
      
      sliderInput("id1","Number of Cylinders",4,8,6,step = 1),
      sliderInput("id6","Number of Gears",3,5,4,step = 1),
      sliderInput("id7","Number of Carburetors",1,8,5,step = 1),     
      
      
      actionButton("button1","Click to Predict Your vehicles Mileage")
    ),
    
    mainPanel(
      h1("Prediction Outcome"),
      
      h3("App Documentation"),
      
      h4("This is a very simple app to predict vehicles MPG using Mtcars dataset"),
      
      h4("Step 1: Select the characteristics of the car for which you want to predict the MPG"),
      
      h4("Step 2: You can select parameters as Number of Cylinders(4-8) ,Displacement(50-600 cu.in.) ,Horse Power(50-350) ,Engine Type(V/S), Transmission Type(0-1/Automatic-Manual), Number of Gears(3-5) ,Number of Carburetors(1-8) to predict the MPG"),
      h4("Step 3: Once selection is completed , click on the 'Click to predict your vehicles mileage'button "),
      h4("Step 4: Prediction outcome i.e. predicted MPG value will be displayed in the main panel "),
      h4("Step 5: Repeat the process to check variantion and co-relation between the parameters and MPG "),
      
      h3(textOutput("predictionvalue"))
    )
  )
)
