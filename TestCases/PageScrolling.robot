*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    Maximize Browser Window
    
    #Execute Javascript    window.scrollTo(0,2500)
    
    #Scroll Element Into View    xpath://img[@src='flags-normal/flag-of-India.png']
    
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    2       
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    2    

    Close Browser