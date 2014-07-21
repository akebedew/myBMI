library(shiny)
shinyServer(
    function(input, output){
        output$bmi <- renderPrint({
            (input$weight*703)/(input$height^2)
        output$weight<-renderPrint({input$weight})
        output$height<-renderPrint({input$height})
        output$age<-renderPrint({input$age})
        #output$gender<-renderPrint({input$gender})
	  output$gender <- renderText({
        if (input$gender == 0) "a female"
        else if (input$gender == 1) "a male"})
        output$fatc<-renderPrint({if (input$age <= 15)((1.51*(input$weight*703)/(input$height^2)) - (0.70*input$age) - (3.6*input$gender) + 1.4)
	  else ((1.20*(input$weight*703)/(input$height^2)) + (0.23*input$age) - (10.8*input$gender) - 5.4)})
        output$bmi<-renderPrint({(input$weight*703)/(input$height^2)})
        output$status<-renderPrint({if((input$weight*703)/(input$height^2)<18.5) "Underweight"
        else if((input$weight*703)/(input$height^2)<24.9) "Normal weight"
        else if ((input$weight*703)/(input$height^2)<29.9) "Overweight"
	  else "obese"})
            })
    })


