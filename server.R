

library(shiny)


shinyServer(function(input, output) {
   
    
    summation <- reactive({
        x <- as.numeric(input$number1)
        y <- as.numeric(input$number2)
        x + y
    })
    
    subtraction <- reactive({
        x <- as.numeric(input$number1)
        y <- as.numeric(input$number2)
        x - y
    })
    
    multiplication <- reactive({
        x <- as.numeric(input$number1)
        y <- as.numeric(input$number2)
        x * y
    })
    
    division <- reactive({
        x <- as.numeric(input$number1)
        y <- as.numeric(input$number2)
        x / y
    })
    
    output$output1 <- renderText({
        summation()
    })
    
    output$output2 <- renderText({
        subtraction()
    })
   
    output$output3 <- renderText({
        multiplication()
    })
    
    output$output4 <- renderText({
        division()
    })
    
})
