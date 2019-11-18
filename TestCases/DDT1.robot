*** Settings ***
Library    SeleniumLibrary   
Resource    ../Resources/Login_resources.robot

Suite Setup    Open my browser
Suite Teardown    Close browsers 
Test Template    Invalid login

*** Test Cases ***        username                Password
Right user emty pass    admin@yourstore.com      ${EMPTY}  
Right user wrong pass    admin@yourstore            xyz
Wrong user right pass    adm@yourstore             admin
Wrong user empty pass    adm@yourstore.com        ${EMPTY}
Wrong user wrong pass    adm@yourstore              xyz

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input usrname    ${username}
    Input pswd    ${password}
    CLick login buttn
    Error message should be visible