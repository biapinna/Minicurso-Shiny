library(tidyverse)
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(plotly)
library(RColorBrewer)

#COMANDOS INICIAIS
##Início
path = getwd()
##Fim


#CABEÇALHO:
##Início
header = dashboardHeader(title = a(href = "http://www.ence.ibge.gov.br/",
                                   target="_blank"))
##Fim

#BARRA LATERAL:
##Início
sidebar = dashboardSidebar(sidebarMenu(menuItem(text = "Curriculum vitae",
                                                icon = icon("drivers-license-o"),
                                                tabName = "cv")))
##Fim

#CORPO:
##Início
body = dashboardBody(tags$head(tags$link(rel = "stylesheet",
                                         type = "text/css",
                                         href = "style.css")),
                     tabItems(
                       ###Introdução
                       ####Início
                       tabItem(tabName = "cv",
                               h2("1. Currículo"),
                               #Criando a rede social
                               ##"Capa" da rede social
                               fluidRow(box(title = "A minha (breve) história",
                                            status = "primary",
                                            width = 12,
                                            collapsible = FALSE,
                                            collapsed = FALSE,
                                            widgetUserBox(title = "Nome Sobrenome",
                                                          subtitle = "Graduação em Estatística (ENCE)",
                                                          type = NULL,
                                                          width = 12,
                                                          src = "logoUser.jpg",
                                                          background = TRUE,
                                                          backgroundUrl = "panofundo.jpg",
                                                          closable = FALSE,
                                                          br(),
                                                          p("Olá! Sua descrição "),
                                                          p("Fale sobre sua vida.",
                                                            "Fale sobre o que gosta de fazer. "),
                                                          footer = "Vou colocar aqui um pouquinho sobre a minha vida e os meus objetivos. Espero que gostem :D"),
                                            ##Linha do tempo da rede social
                                            column(width = 6,
                                                   timelineBlock(timelineEnd(color = "blue"),
                                                                 timelineItem(title = "Trabalho 2",
                                                                              icon = "line-chart",
                                                                              color = "blue",
                                                                              time = "01/01/2020",
                                                                              p("Descrição"),
                                                                              footer = "Atual."),
                                                                 timelineItem(title = "Estudo",
                                                                              icon = "university",
                                                                              color = "blue",
                                                                              time = "01/01/2020",
                                                                              p("Curso."),
                                                                              footer = "Previsão de Término em: "),
                                                                 timelineLabel(2020, color = "blue"),
                                                                 timelineItem(title = "Trabalho 1",
                                                                              icon = "line-chart",
                                                                              color = "blue",
                                                                              time = "01/01/2019",
                                                                              p("Descrição"),
                                                                              footer = "Atual."),
                                                                 timelineLabel(2019, color = "blue"),
                                                                 timelineItem(title = "Iniciação Científica",
                                                                              icon = "flask",
                                                                              color = "blue",
                                                                              time = "01/08/2018",
                                                                              p("Descrição"),
                                                                              footer = "Término em: "),
                                                                 timelineLabel(2018, color = "blue"),
                                                                 timelineItem(title = "Bolsista de Monitoria",
                                                                              icon = "life-ring",
                                                                              color = "blue",
                                                                              time = "01/04/2017",
                                                                              p("Descrição"),
                                                                              footer = "Término em: "),
                                                                 timelineLabel(2017, color = "blue"),
                                                                 timelineStart(color = "blue"))),
                                            ##"Mural" da rede social
                                            column(width = 6,
                                                   socialBox(title = "ENCE",
                                                             width = 12,
                                                             closable = FALSE,
                                                             collapsible = FALSE,
                                                             subtitle = "24/11/2020",
                                                             src = "logoENCE.png",
                                                             p("Por que escolheu cursar estatística na graduação?"),
                                                             comments = tagList(boxComment(src = "logoUser.jpg",
                                                                                           title = "Usuário",
                                                                                           date = "24/11/2020",
                                                                                           p("Descrição")))),
                                                   socialBox(title = "ENCE",
                                                             width = 12,
                                                             closable = FALSE,
                                                             collapsible = FALSE,
                                                             subtitle = "24/11/2020",
                                                             src = "logoENCE.png",
                                                             p("Quais as principais dificuldades que você encontrou durante o curso?"),
                                                             comments = tagList(boxComment(src = "logoUser.jpg",
                                                                                           title = "Usuário",
                                                                                           date = "24/11/2020",
                                                                                           "Descrição"))),
                                                   socialBox(title = "ENCE",
                                                             width = 12,
                                                             closable = FALSE,
                                                             collapsible = FALSE,
                                                             subtitle = "24/11/2020",
                                                             src = "logoENCE.png",
                                                             p("E o que você pretende fazer após concluir a graduação?"),
                                                             comments = tagList(boxComment(src = "logoUser.jpg",
                                                                                           title = "Usuário",
                                                                                           date = "24/11/2020",
                                                                                           "Descrição"))),
                                                   socialBox(title = "Usuário",
                                                             width = 12,
                                                             closable = FALSE,
                                                             collapsible = FALSE,
                                                             subtitle = "24/11/2020",
                                                             src = "logoUser.jpg",
                                                             p("Obrigado pela oportunidade de contar um pouco de mim e espero que tenham gostado!"),
                                                             comments = tagList(boxComment(src = "logoENCE.png",
                                                                                           title = "ENCE",
                                                                                           date = "24/11/2020",
                                                                                           p(":)")))),
                                                   box(title = "Interesses e curtidas",
                                                       status = "primary",
                                                       width = 12,
                                                       userList(userListItem(src = "logoR2.png",
                                                                             user_name = "R"),
                                                                userListItem(src = "logoPython2.png",
                                                                             user_name = "Python"),
                                                                userListItem(src = "logoSQL2.png",
                                                                             user_name = "SQL"),
                                                                userListItem(src = "logoPowerBI2.png",
                                                                             user_name = "PowerBI"),
                                                                userListItem(src = "logoTensorFlow2.png",
                                                                             user_name = "TensorFlow"),
                                                                userListItem(src = "logoPlotly2.png",
                                                                             user_name = "Plotly")))))),
                               fluidRow(box(title = "Album de fotos",
                                            status = "primary",
                                            width = 12,
                                            align = "center",
                                            sliderInput(inputId = "num",
                                                        label = "Escolha uma foto:",
                                                        value = 1,
                                                        min = 1,
                                                        max = 4),
                                            imageOutput(outputId = "foto",
                                                        width = "80%",
                                                        height = "480px"))))
                       ####Fim
                     ))
####Fim
##Fim


#INTERFACE DE USUÁRIO:
##Início
ui = dashboardPage(header = header,
                   sidebar = sidebar,
                   body = body,
                   title = "Apresentação - Usuário")
##Fim

#SERVIDOR:
##Início
server = function(input, output){
  output$foto = renderImage( {
    foto = normalizePath(file.path("./images",
                                   paste0("foto",
                                          input$num,
                                          ".jpg")))
    list(src = foto) },
  deleteFile = FALSE) }
##Fim

#RODANDO O APLICATIVO:
##Início
shinyApp(ui = ui,
         server = server)
##Fim
