*** Settings ***
Library           SeleniumLibrary
Library           ./NewKeywords.py

*** Test Cases ***
Use New Keywords From SeleniumLibrary
    SeleniumLibrary.Open Browser     localhost
    ${capabilities} =    SeleniumLibrary.Get Browser Desired Capabilities
    Log    ${capabilities}
    SeleniumLibrary.Log Source
    [Teardown]    Close Browser
