*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${url}    https://www.youtube.com
${browser}    Edge

*** Test Cases ***
Toggle Button 
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
          
    Close Browser
    
*** Keywords ***
