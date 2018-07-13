

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Basic Mathematical Operations on two numbers"),
  
  # Sidebar with a two numeric inputs for 2 numbers
  sidebarLayout(
    sidebarPanel(
       textInput("number1",
                   "Enter the first number:",
                   value = 1),
       textInput("number2",
                    "Enter the second number:",
                    value = 1)
    ),
    
    # Show summation output
    mainPanel(
        h3("Summation:"),
        textOutput("output1"),
        h3("Subtraction:"),
        textOutput("output2"),
        h3("Multiplication:"),
        textOutput("output3"),
        h3("Division:"),
        textOutput("output4")
    )
  )
))
