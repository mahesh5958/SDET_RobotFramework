*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
Speed Test
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}    
    Set Selenium Speed    2     # Applies on all lines
    

    Select Radio Button    Gender    M
    #Sleep    3    # Aplies on one statement
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email    abc@gmail.com
    Input Text    name:Password    davidjohn    
    Input Text    name:ConfirmPassword    davidjohn    
    
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}    
    
    Close Browser
    
*** Keywords ***
            
    