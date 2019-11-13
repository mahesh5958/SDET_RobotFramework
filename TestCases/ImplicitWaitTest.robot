*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
TimeOut Test
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    ${implictTime}=    Get Selenium Implicit Wait
    Log To Console    ${implictTime}    
    
    Set Selenium Implicit Wait    10
    
     ${implictTime}=    Get Selenium Implicit Wait
    Log To Console    ${implictTime} 
        
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email    abc@gmail.com
    Input Text    name:Password    davidjohn    
    Input Text    name:ConfirmPassword    davidjohn    
    
    ${implictTime}=    Get Selenium Implicit Wait
    Log To Console    ${implictTime}    
    
    Close All Browsers



*** Keywords ***