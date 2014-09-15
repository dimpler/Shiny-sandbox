library(ggplot2)
library(shiny)

# data(diamonds)


shinyServer(  
  function(input, output){
    
    # data subsetting
    dataset <- reactive({
      ind <- sample(nrow(diamonds), input$sample.size, replace = F)
      diamonds[ind,]
    })
    
    # Rendering GGplot
    output$GGplot <- renderPlot({
      
      plot <- ggplot(dataset(), aes_string(x=input$x, y=input$y)) + geom_point(alpha=input$alpha)
      
      if (input$color != "None")
        plot <- plot + aes_string(colour = input$color)
      
      facets <- paste(input$row.faceting, "~", input$col.faceting)
      if (facets != ". ~ .")
        plot <- plot + facet_grid(facets)
      
      if (input$smooth)
        plot <- plot + geom_smooth(lwd = 1.2)
      
      if (input$jitter)
        plot <- plot + geom_jitter(alpha = input$alpha)    
            
      return(plot)
    })
  }    
  )