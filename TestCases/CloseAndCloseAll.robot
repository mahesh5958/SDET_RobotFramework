*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
Close & Close All Browser windows 
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    Open Browser    http://automationpractice.com/index.php    chrome
    Maximize Browser Window
    
    #Close Browser
    Close All Browsers


*** Keywords ***
