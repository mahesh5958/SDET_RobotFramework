*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Tabel Validations
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    Log To Console    ${rows}    
    
    ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${cols} 
    
    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]    # Master In Selenium
    Log To Console    ${data}    
    
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author   
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS    
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh    
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName    



    Close Browser