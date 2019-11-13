*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Radio buttons & Checkboxes test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2
    
    # Selecting Radio buttons
    Select Radio Button    sex    Female
    Select Radio Button    exp    5
    
    # Selecting checkboxes    
    Select Checkbox    Black Tea
    Select Checkbox    Red Tea
    
    Unselect Checkbox    Black Tea
    
    Close Browser
    
       
*** Keywords ***
