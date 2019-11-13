*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns & List boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    # Combo box
    Select From List By Label    continents    Australia
    Sleep    2    
    Select From List By Index    continents    1
    
    #Select From List By Value    continents    value
    
    # List box
    Select From List By Label    selenium_commands    Navigation Commands    
    Sleep    2    
    Select From List By Label    selenium_commands    Switch Commands
    Sleep    2    
    Unselect From List By Label    selenium_commands    Navigation Commands
    Sleep    2    
    
    Close Browser
    
*** Keywords ***
