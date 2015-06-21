shinyServer(function(input, output) {

  output$pie <- renderPlot({
    spend <- c(as.numeric(input$sliderfood),
               as.numeric(input$slidergas),
               as.numeric(input$sliderservice),
               as.numeric(input$sliderbill),
               as.numeric(input$slidertax),
               as.numeric(input$slidermerch),
               as.numeric(input$slidergift))
    pie(spend, 
        labels=c("Food", "Gasoline", "Services", 
                 "Bills", "Taxes", "Merchandise", "Gifts"),
        sub=format(as.Date(input$date), format="%A, %B %e, %Y"))
  })
  
  output$datedisplay <- renderText({
    format(as.Date(input$date), format="%A, %B %e, %Y")
  })
  
})
