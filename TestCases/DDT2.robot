*** Settings ***
Library    SeleniumLibrary   
Resource    ../Resources/Login_resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1

Suite Setup    Open my browser
Suite Teardown    Close browsers 
Test Template    Invalid login

*** Test Cases ***        
DDTUsingExcel     username     password
    


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input usrname    ${username}
    Input pswd    ${password}
    CLick login buttn
    Error message should be visible