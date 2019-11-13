*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
Testing Frames
    Open Browser    https://selenium.dev/selenium/docs/api/java/index.html    chrome
    Maximize Browser Window
    
    Select Frame    packageListFrame    # id / name /xpath
    Click Link    org.openqa.selenium
    Unselect Frame
    
    Sleep    2
    
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    
    Sleep    2    
    
    Select Frame    classFrame
    Click Link    Index
    Unselect Frame
    
    Sleep    2            
    
    Close Browser

*** Keywords ***
