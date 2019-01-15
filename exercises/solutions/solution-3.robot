*** Settings ***
Documentation    For Exercise #3 use some SeleniumLibrary keywords to
...              login to the Demo App, http://localhost:7272/index.html,
...              with user 'demo' who has the password 'mode'.

Library    SeleniumLibrary

*** Test Cases ***
Login to the DemoApp using only the id locator strategy
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  id:username_field  demo
    Input Text  id:password_field  mode
    Click Element  id:login_button
    
Login to the DemoApp using xpath
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  //*[@id='username_field']  demo
    Input Text  //table//tr[2]//input  mode
    Click Element  //input[@value='LOGIN']
    
Login to the DemoApp using the css locator strategy
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  css:*[id='username_field']  demo
    Input Text  css:tr:nth-of-type(2) input  mode
    Click Element  css:#login_button
    
Using the default locator strategy
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  username_field  demo
    Input Text  password_field  mode
    Click Element  login_button
    Close Browser
