*** Settings ***
Documentation    For Exercise #4 once you have logged into the Demo App,
...              http://localhost:7272/index.html, verify that you are on
...              the correct page.

Library    SeleniumLibrary

*** Test Cases ***
Verify You Succesfully Login
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  id:username_field  demo
    Input Text  id:password_field  mode
    Click Element  id:login_button
    Page Should Contain    Welcome Page
    Page Should Not Contain    Error Page
    Close All Browsers
    
Another Way Of Verifying
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  //*[@id='username_field']  demo
    Input Text  //tr//input[1]  mode    # //tr[2]//input[1] is a valid xpath to the password field
    Click Element  //input[@value='LOGIN']
    ${Page_Title}  Get Text  css:div#container h1
    Should Not Be Equal  ${Page_Title}  Error Page  msg=You've landed on the login error page. Perhaps there is an error!?!
    Close All Browsers