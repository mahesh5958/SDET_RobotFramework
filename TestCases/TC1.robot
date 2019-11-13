*** Settings ***
Library    SeleniumLibrary       

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser} 
    LoginToApp
    Close Browser            

*** Keywords ***
LoginToApp
    Click Link    xpath://a[contains(@class,'ico-login')]
    Input Text    id:Email    pavanoltraining@gmail.com
    Input Text    id:Password    Test@123
    Click Element    xpath://input[@value='Log in']
