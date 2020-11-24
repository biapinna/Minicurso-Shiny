library(shiny)

ui <- fluidPage(
    titlePanel("Examplo com DataTables"),
    sidebarLayout(
        sidebarPanel(
                checkboxGroupInput("show_vars", "Selecione as colunas que deseja visualizar do dataset mtcars:",
                                   names(mtcars), selected = names(mtcars)[1:2])
        ),
        mainPanel(
            tabsetPanel(
                id = 'dataset',
                tabPanel("mtcars", DT::dataTableOutput("mytable1"))
            )
        )
    )
)

server <- function(input, output) {
    
    # selecione as colunas para mostrar
    output$mytable1 <- DT::renderDataTable({
        DT::datatable(mtcars[, input$show_vars, drop = FALSE])
    })
    
    
}

shinyApp(ui, server)