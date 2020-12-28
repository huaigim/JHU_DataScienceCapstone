library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
  navbarPage("Next Word Predict",
             theme = shinytheme("spacelab"),
             tabPanel("Home",
                      fluidPage(
                        titlePanel("Home"),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("userInput",
                                      "Enter a word or phrase:",
                                      value =  "",
                                      placeholder = "Enter text here"),
                            br(),
                            sliderInput("numPredictions", "Number of Predictions:",
                                        value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                          ),
                          mainPanel(
                            h4("Input text"),
                            verbatimTextOutput("userSentence"),
                            br(),
                            h4("Predicted words"),
                            verbatimTextOutput("prediction1"),
                            verbatimTextOutput("prediction2"),
                            verbatimTextOutput("prediction3")
                          )
                        )
                      )
             ),
             tabPanel("About",
                      h3("About Next Word Predict"),
                      br(),
                      div("Next Word Predict is a Shiny app that uses a text
                            prediction algorithm to predict the next word(s)
                            based on text entered by a user.",
                          br(),
                          br(),
                          "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                          br(),
                          br(),
                          "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                          br(),
                          br(),
                          "The source code for this application can be found
                            on GitHub:",
                          br(),
                          br(),
                          img(src = "github.png"),
                          a(target = "_blank", href = "https://github.com/oraclejavanet/coursera-data-science-capstone/tree/master/shiny-app/",
                            "Next Word Predict")),
                      br(),
                      h3("About Me"),
                      br(),
                      div("My name is Nicholas H.G. Ong and I am a
                            Data Scientist for ",
                          a(target = "_blank", href = "https://www.mas.gov.sg/", "The Monetary Authority of Singapore (MAS)"),".",
                          "Prior to MAS, I have over 8 years of experience working
                            in the area of Investment Banking, Equity Research and
                            Corporate Finance.",
                          br(),
                          br(),
                          "My work includes financial supervision and data
                            analytics.",
                          br(),
                          br(),
                          "My other specialties include mathematics,
                            developing statistical models, predictive analytics
                            and statistical data analysis in R and Python.",
                          br(),
                          br(),
                          "I graduated from Imperial College London in
                            United Kingdom with a Master of Science degree in
                            Finance.",
                          br(),
                          br(),
                          img(src = "linkedin.png"),
                          a(target = "_blank", href="https://www.linkedin.com/in/nicholas-ong-02336234/", "Nicholas Ong"))
             )
  )
)