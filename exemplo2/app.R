library(shiny)
library(ggplot2)  # dataset diamonds 

ui <- fluidPage(
    titlePanel("Examplo com DataTables"),
    sidebarLayout(
        sidebarPanel(
                checkboxGroupInput("show_vars", "Selecione as colunas que deseja visualizar do dataset diamonds:",
                                   names(diamonds), selected = names(diamonds))
        ),
        mainPanel(
            tabsetPanel(
                id = 'dataset',
                tabPanel("diamonds", DT::dataTableOutput("mytable1"))
            )
        )
    )
)

server <- function(input, output) {
    
    # selecione as colunas para mostrar
    diamonds2 = diamonds[sample(nrow(diamonds), 1000), ]
    output$mytable1 <- DT::renderDataTable({
        DT::datatable(diamonds2[, input$show_vars, drop = FALSE])
    })
    
    
}

shinyApp(ui, server)