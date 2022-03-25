#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
   # fluidPage(#title="osFP: a web server for predicting the oligomeric state of fluorescent proteins", theme=shinytheme("united"),
     # navbarPage("",
       navbarPage(strong("osFP"), collapsible = TRUE,
                         titleContent <- HTML("<b>osFP</b>: a web server for predicting the oligomeric state of fluorescent proteins"),
                      #   tabPanel("Submit Job", titlePanel(titleContent),
                      #            sidebarLayout(
                      #              wellPanel(
                                    #  tags$label("Enter your input sequence(s) in FASTA format",style="float: none; width: 100%;"),
                                    #  actionLink("addlink", "Insert example data"),
                                    #  tags$textarea(id="Sequence", rows=5, cols=100, style="float: none; width:100%;", ""),
                                      #actionLink("addlink", "Insert example data"),
                                      #tags$label("or",style="float: none; width: 100%;"),
                      #                fileInput('file1', 'or upload file',accept=c('text/FASTA','FASTA','.fasta','.txt')),
                                      # tags$label("Step 2 - Submit your job",style="float: none; width: 100%;"),
                    #                  actionButton("submitbutton", "Submit", class = "btn btn-primary"),
                    #                  HTML("<a class='btn btn-default' href='/osfp'>Clear</a>")
                    #                ), #wellPanel
                                    
                    #                mainPanel(
                    #                  tags$label("Status/Output",style="float: none; width: 100%;"),
                    #                  verbatimTextOutput('contents'),
                    #                  downloadButton('downloadData', 'Download CSV')
                    #                )  
                    #              ) #sidebarLayout
                    #     ), #tabPanel Submit Job
                         
                         tabPanel("About", titlePanel("About"), div(includeMarkdown("about.md"), align="justify")),
                         tabPanel("Download", titlePanel("Download"), div(includeMarkdown("download.md"), align="justify")),
                    #    tabPanel("Citing Us", titlePanel("Citing Us"), div(includeMarkdown("cite.md"), align="justify")),
                         tabPanel("Contact", titlePanel("Contact"), div(includeMarkdown("contact.md"), align="justify"))
    
             # mod_osFP_title_ui("osFP_title_1")
    
  ) #navbarPage
  ) # fluoid page
#  )
  
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "OSFP"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
