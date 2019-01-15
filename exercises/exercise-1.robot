*** Settings ***
Documentation    Create a test case that will open the
...              Chrome browser to http://localhost:7272/index.html.

Library    SeleniumLibrary

*** Test Cases ***
Open Up The Chrome Browser To Demo App Site
    [Documentation]  Using the `Open Browser` keyword open the default
    ...  page of the DemoApp
    
    Fail  Not Yet Implemented
