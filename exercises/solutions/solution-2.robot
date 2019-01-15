*** Settings ***
Library    SeleniumLibrary
Documentation    In this exercise we see how we need the full url
...              for navigation. We also use these errors to start
...		 to explore how one debugs automation scripts.

*** Test Cases ***
Open Up The Chrome Browser To Siili's homepage.
    [Documentation]    We needed to add 'https:' to the url.
    Open Browser  https://www.siili.com/  Chrome

Another Error Using Our DemoApp
    [Documentation]    We needed to add 'https:' to the url.
    Open Browser  http://localhost:7272/index.html  Chrome

Localhost Acts Differently
    [Documentation]    Interestingly this requirement is not manditory when
    ...    using the url 'localhost'.
    
    Open Browser  localhost:7272/index.html  browser=Chrome