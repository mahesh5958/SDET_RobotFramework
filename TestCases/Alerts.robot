*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
Handling Alerts
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element    xpath://button[@onclick='myFunction()'][contains(.,'Click Me')]    # Opens alert
    Sleep    1

    #Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    leave
    Alert Should Be Present    Press a button!

    Sleep    1    
    Close Browser
    
*** Keywords ***
