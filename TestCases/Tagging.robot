*** Settings ***

*** Test Cases ***
TC1 User Registration Test
    [Tags]    regression
    Log To Console    This is user registration test  
    
TC2 Login Test
    [Tags]    sanity
    Log To Console    This is login test    
    
TC3 Change user settings Test
    [Tags]    regression
    Log To Console    This is change user settings test    
    
TC4 Logout Test
    [Tags]    sanity
    Log To Console    This is logout test    