*** Settings ***
Library    SeleniumLibrary
Documentation    In this exercise we see how we need the full url
...              for navigation. We also use these errors to start
...		 to explore how one debugs automation scripts.

*** Test Cases ***
Open Up The Chrome Browser To Siili's homepage.
    [Documentation]    Resolve any issues within this script..

    Open Browser  www.siili.com/  Chrome

Another Error Using Our DemoApp
    [Documentation]    Resolve any issues within this script..

    Open Browser  https://localhost:7272/index.html  Chrome
