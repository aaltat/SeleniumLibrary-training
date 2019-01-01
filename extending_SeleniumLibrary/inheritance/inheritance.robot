*** Settings ***
Library           ./InheritSeleniumLibrary.py

*** Test Cases ***
Use InheritSeleniumLibrary Open Browser Keyword
    Open Browser     localhost
    ${capabilities} =    Get Browser Desired Capabilities
    Log    ${capabilities}
    Log Source
    [Teardown]    Close Browser