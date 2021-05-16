#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(rgdal)
library(leaflet)
library(sp)
library(plotly)
library(dplyr)
library(tidyr)
library(magrittr)
library(lubridate)
library(ggmap)
library(xts)
library(shinyjs)
library(jsonlite)
library(urltools)
library(utils)
library(rvest)
library(stringr)
library(rgeos)
library(xml2)
library(selectr)
library(raster)
library(purrr)
library(RColorBrewer)
library(DT)
library(shinyBS)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    
    # Import and Clean Data 
    dc <- read.csv("Combined.csv", stringsAsFactors = FALSE )
    #"C:/Users/iramesa/Desktop/MSDS/DATA698/Capstone/Additives/Combined.csv"
    dc <- data.frame(dc)
    
    # Data table
    output$data <-DT::renderDataTable(datatable(
        dc))
    

    
    
    
})
