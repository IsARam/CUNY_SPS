#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
library(plotly)
library(shinyjs)
library(shinyBS)

# Define UI for application that draws a histogram
#shinyUI(fluidPage(

    # Application title
    #titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    #sidebarLayout(
        #sidebarPanel(
            #sliderInput("bins",
                        #"Number of bins:",
                        #min = 1,
                        #max = 50,
                        #value = 30)
        #),

        # Show a plot of the generated distribution
        #mainPanel(
            #plotOutput("distPlot")
        #)
    #)
#))

shinyUI(navbarPage(title = "Food & Color Additives",
                   theme = "style/style.css",
                   footer = includeHTML("footer.html"),
                   fluid = TRUE, 
                   collapsible = TRUE,
                   
                   # ----------------------------------
                   # tab panel 1 - Home
                   tabPanel("Home",
                            includeHTML("home.html"),
                            tags$script(src = "plugins/scripts.js"),
                            tags$head(
                                tags$link(rel = "stylesheet", 
                                          type = "text/css", 
                                          href = "plugins/font-awesome-4.7.0/css/font-awesome.min.css"),
                                tags$link(rel = "icon", 
                                          type = "image/png", 
                                          href = "images/logo_icon.png")
                            )
                   ),
                   
                   # ----------------------------------
                   # tab panel 2 - Neighborhood Browser
                   #tabPanel("Neighborhood Browser",
                            #neighborhoodDescription(),
                            #includeHTML("scrollToTop.html")
                   #),
                   
                   # ----------------------------------
                   #tab panel 3 - Data
                   tabPanel("Explore Data",
                            DT::dataTableOutput("data"),
                            #includeHTML("scrollToTop.html")
                   ),
                   
                   # ----------------------------------
                   #tab panel 4 - Glossary
                   tabPanel("Glossary", 
                            includeHTML("glossary.html")
                            ),
                   # ----------------------------------
                   #tab panel 5 - Video
                   tabPanel("Additive Index",
                            includeHTML("additiveindex.html")
                            ),
                   
                   # ----------------------------------
                   # tab panel 4 - About
                   tabPanel("",
                            #includeHTML("about.html"),
                            shinyjs::useShinyjs(),
                            tags$head(
                                tags$link(rel = "stylesheet", 
                                          type = "text/css", 
                                          href = "plugins/carousel.css"),
                                tags$script(src = "plugins/holder.js")
                            ),
                            tags$style(type="text/css",
                                       ".shiny-output-error { visibility: hidden; }",
                                       ".shiny-output-error:before { visibility: hidden; }"
                            )
                   )
                   
))