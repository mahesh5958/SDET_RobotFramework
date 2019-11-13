*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
LoginTC
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window
    Input Text    id:txtUsername    Admin    
    Input Text    id:txtPassword    admin123
    
    #Capture Element Screenshot    xpath://*[@id='divLogo']/img    D:/RobotFramework/SDET_TestProject/Logo.png
    #Capture Page Screenshot    D:/RobotFramework/SDET_TestProject/LoginTC.png 
    
    Capture Element Screenshot    xpath://*[@id='divLogo']/img    Logo.png
    Capture Page Screenshot    LoginTC.png 
    
    Close Browser   