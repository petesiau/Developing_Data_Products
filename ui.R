#
# title: "Developing Data Products Course Project - Shiny Application"
# author: "Pete Siau"
# date: "January 28, 2016"
# filename: "ui.R"

library(shiny)
library(lubridate)
library(ggplot2)
require(markdown)

shinyUI <- fluidPage(
  navbarPage("Air Pollutant Index (API) for Banting town area, Selangor, Malaysia.",
    tabPanel("Display the API",
      sidebarLayout(
        sidebarPanel(
          selectInput(inputId = "year", label = "Select Year:", selected =2015, choices = c(2013,2014,2015)
                      ),
            sliderInput(inputId = "month", label = "Range of Month:", min = 1, max = 12, value = c(1, 6)
                        ),
              checkboxInput(inputId="displaySelectionMean", "Display Selections and API Mean:", value = FALSE),htmlOutput("html1")
                            ),
                mainPanel(
                  tabsetPanel(
                    tabPanel(p(icon("line-chart"), "Graph"),
                            h4('Air Pollutant Index (API) for Banting town area, Selangor, Malaysia.', align = "center"),
                            plotOutput("plot1")
                    ),
                    tabPanel(p(icon("table"), "Data"), dataTableOutput(outputId="dTable"),
                            downloadButton("downloadData", label ="Download")
                    ),
                    tabPanel(p(icon("list-alt"), "Summary"), textOutput("dSummary")
                    )
                  ) #tabsetPanel
                ) #mainPanel
      ) #sidebarLayout
    ), #1st tabPanel
             
    tabPanel("Read Me",mainPanel(includeMarkdown("README.md"))
    ) #tabPanel
             
  ) #navbarPage
) #fluidPage