#install.packages("shiny")
library(reshape2)
library(shiny)
library(htmltools)
library(leaflet)
library(plotly)

shinyUI(navbarPage("Irish Tourism Trends",
                    tabPanel("Home",
                             h1("Welcome to Irish Tourism Trends", align = "center"),
                             br(),
                             p(h3("This is a data analytics platform which addresses:",align = "center")),
                             br(),
                             p(h5("- The impact of the recession on passenger intake.",align = "center")),
                             p(h5("- The impact of the recession on each individual airport.",align = "center")),
                             p(h5("- Which Irish airports are most popular.",align = "center")),
                             p(h5("- Which country brings the most amount of passengers to Ireland.",align = "center")),
                             p(h5("- What airports bring the most people to Ireland.",align = "center")),
                             p(h5("- The busiest month for people to come to Ireland.",align = "center")),
                             p(h5("- The predicition of future passengers to Ireland.",align = "center")),
                             p(h5("- Why people are coming to Ireland an how much they're spending.",align = "center")),
                             br(),
                            br(),
                            br(),
                            br(),
                            br(),
                            br(),
                            br(),
                            br(),
                            br(),
                            br()
                            
                            
                             
                      
                    ),
                           
                           tabPanel("Flights",
                                    fluidPage(
                                    fluidRow(
                                    column(4,
                                          selectInput("choice","Group:",choices = c(2007,2008,2009,2010,2011,2012,2013,2014,2015,2016), selected = 2007),
                                          uiOutput("value"),
                                          verbatimTextOutput("Click_text")
                                        ),
                                    column(8,
                                          leafletOutput("Map")
                                        ),
                                    
                                    column(6,
                                            plotlyOutput("plotBar")
                                            ),
                                    column(6,
                                           plotlyOutput("plotLine")
                                           ),
                                    
                                    column(6,
                                           plotlyOutput("plotPieChart")
                                    ),
                                    column(6,
                                           plotlyOutput("plotLinePlot")
                                    ),
                                    column(12,
                                           plotlyOutput("plotLinePlotTime")
                                    ),
                                    
                                    column(12,
                                           plotlyOutput("plotBarForeign2")
                                    ),
                                    column(12,
                                           plotlyOutput("plotBarForeign3")),
                                    
                                    column(6,
                                           plotlyOutput("plotPieChartForeign")),
                                    
                                    column(6,
                                           plotlyOutput("plotPieChartForeign2"))
                                    
                                    
                                    
                                    )
                           )
),
tabPanel("Visitors",
         fluidPage(
           fluidRow(
             column(12,
                    plotlyOutput("plotLineReason")),
             column(12,
                    plotlyOutput("plotLineCountry")),
             column(6,
                    plotlyOutput("plotLineExp")),
             column(6,
                    plotlyOutput("plotPieExpend")),
             column(12,
                    plotlyOutput("plotCor"))
           )
           
         )
         ),
tabPanel("About",
         h1("About Page", align = "center"),
         br(),
         p(h2("About the Developer:",align = "center")),
         br(),
         p(h5("This platform was developed by Robbie Jenkinson, a 4th year Data analytics student at the National College of Ireland. This Project was created
              using data from the CSO(Central Statistics Office), and software form plotly which is a free, open-source visualisation software.",align = "center")),
         br(),
         p(h2("Licenses:",align = "center")),
         br(),
         p(h6("CSO: https://creativecommons.org/licenses/by/4.0/ ",align = "center")),
         br(),
         p(h6("Plotly: The MIT License (MIT)",align = "center")),
         br(),
         p(h6("Copyright (c) 2018 Plotly, Inc",align = "center")),
         br(),
         p(h6("Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:",align = "center")),
         br(),
         p(h6("The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.",align = "center")),
    br(),
    p(h6("THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.",align = "center"))
         
         
             
)
)     
)



                                    
                                  


