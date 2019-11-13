*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Tabbed Windows Test
    Open Browser    http://demo.automationtesting.in/Windows.html    chrome
    Click Element    xpath://*[@id="Tabbed"]/a/button    
    
    Select Window    title=Sakinalium | Home
    Click Element    xpath://*[@id='container']/header//div[2]/ul/li[4]/a
    
    Sleep    2    
    
    Close All Browsers    