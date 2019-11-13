*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
TimeOut Test
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    ${time}=    Get Selenium Timeout
    Log To Console    ${time}    
    Set Selenium Timeout    10
    Wait Until Page Contains    Register   # Default timeout is 5 sec maximum
        
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email    abc@gmail.com
    Input Text    name:Password    davidjohn    
    Input Text    name:ConfirmPassword    davidjohn    
    
    
    
    Close All Browsers



*** Keywords ***
