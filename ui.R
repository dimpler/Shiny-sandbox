library(shiny)
library(ggplot2)
data(diamonds)


shinyUI(pageWithSidebar(
  headerPanel("Explore the diamond data!"),
  
  # Configuring sidebar panel
  sidebarPanel(
    
    ## Slider for sample size
    sliderInput('sample.size', 'Sample size:', value = 25000,
                min = 1, max = nrow(diamonds)),
    
    ## Select X and Y variables (price vs carat by default)
    selectInput('x', 'X axis variable:',
                choices = names(diamonds), selected = names(diamonds)[[1]]),
    selectInput('y', 'Y axis variable:',
                choices = names(diamonds), selected = names(diamonds)[[7]]),
    
    ## Select for color variable (clairty by default)
    selectInput('color', 'Color by:',
                choices = c("None", names(diamonds)), selected = "None"),
    
    ## Slider for alpha (transparency) value
    sliderInput('alpha', 'Transparency of dots*', value = 1,
                min = 0, max = 1, step = 0.005),
    helpText('*This number equals 1 divided by number of overlayed points giving the solid color'),
    
    ## Select variables for faceting (only factor variables are used)
    selectInput('row.faceting', 'Row faceting',
                choices = c(None = ".", names(diamonds)[2:4]),# "None" is displayed, dot is used in algorythm
                selected = "None"),
    selectInput('col.faceting', 'Column faceting',
                choices = c(None = ".", names(diamonds)[2:4]),# "None" is displayed, dot is used in algorythm
                selected = "None"),
    
    ## Checkboxes for smooth and jittering
    checkboxInput('jitter', 'Jitter'),
    checkboxInput('smooth', 'Smooth')
    
    ),
  
  mainPanel(
    p('Raw data available in ggplot2 R library'),
    plotOutput('GGplot'),
    p(em("Documentation:",a("click here",href="index.html")))
    )
  
  ))