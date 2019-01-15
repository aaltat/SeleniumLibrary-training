*** Settings ***
Documentation    Create a test case that will open the
...              Chrome browser to http://localhost:7272/index.html.

Library    SeleniumLibrary

*** Test Cases ***
Open Up The Chrome Browser To Demo App Site
    Open Browser  http://localhost:7272/index.html  browser=Chrome