*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Navigation test
    Open Browser    https://www.google.com/       chrome
    ${loc}=    Get Location
    Log To Console    ${loc}    
    
    Sleep    2    
    
    Go To    https://www.bing.com/
    ${loc}=    Get Location
    Log To Console    ${loc}    
    
    Sleep    2 
    
    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}    
    
    Sleep    2 
    

    Close Browser