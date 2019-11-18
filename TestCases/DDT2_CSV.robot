*** Settings ***
Library    SeleniumLibrary   
Resource    ../Resources/Login_resources.robot


Suite Setup    Open my browser
Suite Teardown    Close browsers 

*** Test Cases ***        




*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input usrname    ${username}
    Input pswd    ${password}
    CLick login buttn
    Error message should be visible