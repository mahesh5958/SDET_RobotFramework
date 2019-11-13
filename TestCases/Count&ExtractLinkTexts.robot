*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Gell All Links Test
    Open Browser    http://newtours.demoaut.com/    chrome
    Maximize Browser Window
    
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}   
     
    @{LinkItems}=    Create List    # Not used
    
    :FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
    \    ${linktext}    Get Text    xpath:(//a)[${i}]
    \    Log To Console    ${linktext}    
    



    Close Browser