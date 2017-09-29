# ui.R

library(shiny)
library(shinyjs)
library(ems)

ui <- fluidPage(
  titlePanel("Shiny funnelplotr"), 
  sidebarLayout(
    sidebarPanel(h3("Set up")
      
    ), 
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Proportions", 
                           fluidRow(
                             column(width = 8, h2("Data upload"),
                                    fileInput('file1', 
                                              'Choose file to upload', 
                                              accept = c('text/csv',
                                                         'text/comma-separated-values',
                                                         'text/tab-separated-values',
                                                         'text/plain',
                                                         '.csv',
                                                         '.tsv')
                                    ),
                                    tags$hr() # inserts a horizontal line
                                    ), 
                             column(width = 8, h2("Data"), tags$hr()), 
                             column(width = 8, h2("Funnel plot"), tags$hr())
                           )
                  ), 
                  tabPanel("Rates"), 
                  tabPanel("Standardised rates")
                  )
    )
  )
)
