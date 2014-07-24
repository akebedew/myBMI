library(shiny)
fluidPage(
    # Application title
    titlePanel('Body Mass Index and Fat Content Calculator'),
    
    # Sidebar with text boxes for budget input.
    sidebarPanel(
	  h4('Input'),
        numericInput('weight', 'Weight', 100, 5),
        numericInput('height', 'Height', 70, 5),
        numericInput('age', 'Age', 20, 0),
        numericInput('gender', 'Gender', 0, 0, 1),
        submitButton('Calc'),
        br(),
        br(),
	  img(src="31164_orig.jpg", height = 920, width = 467),
        h6('The image below shows weight classification based on BMI for males: '),
	  img(src="bmi-male.jpg", height = 920, width = 467),
        h6('The image below shows weight classification based on BMI for females: '),
	  img(src="bmi-female.jpg", height = 920, width = 467),
	  h6(em('Image source:  http://www.scientificpsychic.com/fitness/diet.html '))
        ),
    
    mainPanel(
	  h4('Documentation'),
        p("Monitoring  Body Mass Index (BMI) and percent fat content is important to monitor health status.  
           This application is developed to calculate BMI based on weight and height and peercent  
           fat content based on BMI, age and gender. The images included in the side panel are for illustration only. 
           The Instruction on how to use the App. is given below:"),
        h4('Instructions'),
        p("1. Enter your weight in pounds and height in inches in the form to the 
          left."),
        p("2. Enter your age and gender (for females: gender=0, and for males: gender =1)."),
        p("3. Press the 'Calc' button to see your Body Mass Index (BMI), your % fat content, and your
          weight classification"),
        h4('Your weight in pounds is: '),
        verbatimTextOutput("weight"),
        h4('Your height in inches is: '),
        verbatimTextOutput("height"),
        h4('Your age is: '),
        verbatimTextOutput("age"),
        h4('Your are: '),
        verbatimTextOutput("gender"),
        h4("Your Body Mass Index (BMI) is: "),
        verbatimTextOutput('bmi'),
        h4('Your percent fat content is: '),
        verbatimTextOutput('fatc'),
        h4("Your weight classification is: "),
        verbatimTextOutput('status'),
	  h6(em('Note: The equations to calculate percent fat content are taken from: http://www.halls.md/bmi/fat.htm')),
        plotOutput('pie')
        )
    )
