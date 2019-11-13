*** Settings ***
Library    SeleniumLibrary 
Resource    ../Resources/resources.robot   

*** Variables ***
${url}    http://newtours.demoaut.com/
${browser}    chrome

*** Test Cases ***
TC1
    ${pageTitle}=    launchBrowser    ${url}    ${browser}
    Log To Console   ${pageTitle}
    Log    ${pageTitle}        
    Input Text    name:userName    mercury    
    Input Text    name:password    mercury    
    
    Sleep    2    
    
    Close Browser    