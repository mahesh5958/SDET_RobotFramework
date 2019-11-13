*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MouseActions
    # Right click/Open context menu
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    
    Open Context Menu    //span[text()='right click me']
    
    Sleep    2    
        
    # Double click action
    Go To    http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    //button[contains(.,'Copy Text')]
    
    Sleep    2    
        
    # Drag and Drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    
    Sleep    2    
    
    Close Browser
    