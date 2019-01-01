*** Settings ***
Library           SeleniumLibrary
Library           ./GetSeleniumLibraryInstance.py

*** Test Cases ***
Use InheritSeleniumLibrary Open Browser Keyword
    GetSeleniumLibraryInstance.Open Browser     localhost
    ${capabilities} =    GetSeleniumLibraryInstance.Get Browser Desired Capabilities
    Log    ${capabilities}
    Log Source
    [Teardown]    Close Browser