*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Multiple Browsers Test
    Open Browser    https://google.com    chrome
    Maximize Browser Window
    
    Sleep    2    
    
    Open Browser    https://bing.com    chrome
    Maximize Browser Window
    
    Switch Browser    1
    ${title}=    Get Title
    Log To Console    ${title}    
    
    Switch Browser    2
    ${title}=    Get Title
    Log To Console    ${title}  
    
    Sleep    2    
    
    Close All Browsers