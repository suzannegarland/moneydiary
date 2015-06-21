
# ui.R

shinyUI(fluidPage(
  titlePanel(""),
  
  sidebarLayout(
    sidebarPanel(
      dateInput("date", 
                label = em("Select date"), 
                value = as.character(Sys.Date())),  
      em("Spending Categories"),
      sliderInput("sliderfood", label = strong("Food"),
                  min = 0, max = 250, value = 65),
      sliderInput("slidergas", label = strong("Gasoline"),
                  min = 0, max = 250, value = 55),
      sliderInput("sliderservice", label = strong("Services"),
                  min = 0, max = 250, value = 100),
      sliderInput("sliderbill", label = strong("Bills"),
                  min = 0, max = 250, value = 125),
      sliderInput("slidertax", label = strong("Taxes"),
                  min = 0, max = 250, value = 40),
      sliderInput("slidermerch", label = strong("Merchandise"),
                  min = 0, max = 250, value = 80),
      sliderInput("slidergift", label = strong("Gifts"),
                  min = 0, max = 250, value = 0),
      #### submitButton(text = "Chart", icon = NULL),
       p()          ),
    mainPanel(
      h1("Money Diary"),
      div(textOutput("datedisplay")),
      "Pieces of the Spending Pie",
      plotOutput("pie")

    )
  )
))

