*** Settings ***
Documentation    For Exercise #3 use some SeleniumLibrary keywords to
...              login to the Demo App, http://localhost:7272/index.html,
...              with user 'demo' who has the password 'mode'.

Library    SeleniumLibrary

*** Test Cases ***
Login to the DemoApp using only the id locator strategy
    [Documentation]  Using the id locator strategy (id:) for entering
    ...  credentials and logging into the DemoApp
    
    Fail  Not Yet Implemented
    
Login to the DemoApp using xpath
    [Documentation]  Can you do the same using xpath?
    
    Fail  Not Yet Implemented
    
Login to the DemoApp using the css locator strategy
    [Documentation]  Or using the css locator strategy?
    
    Fail  Not Yet Implemented
