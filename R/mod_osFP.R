#' osFP UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_osFP_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' osFP Server Functions
#'
#' @noRd 
mod_osFP_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_osFP_ui("osFP_1")
    
## To be copied in the server
# mod_osFP_server("osFP_1")
