*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login    
${BROWSER}    chrome

*** Keywords ***
Open my browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    
Close browsers
    Close All Browsers
    
Open login page
    Go To    ${LOGIN URL}
    
Input usrname
    [Arguments]    ${username}
    Input Text    id:Email    ${username}
    
Input pswd
    [Arguments]    ${password}
    Input Text    id:Password    ${password}    
    
CLick login buttn
    Click Element    //input[@class='button-1 login-button']
    
CLick logout link
    Click Link    Logout
    
Error message should be visible
    Page Should Contain    Login was unsuccessful
    
Dashboard page should be visble
    Page Should Contain    Dashboard    
            

    