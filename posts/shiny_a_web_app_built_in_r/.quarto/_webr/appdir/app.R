library(shiny)

ui <- fluidPage(
  sliderInput("n", "Number", 1, 100, 50),
  plotOutput("plot"))
)

server <- function(input, output) {
  output$plot <- renderPlot({
    hist(rnorm(input$n))
  })
}

shinyApp(ui, server)
