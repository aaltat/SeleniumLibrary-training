*** Settings ***
Library           ./Decomposition.py

*** Test Cases ***
Decomposition Example
    Open Browser     localhost
    ${capabilities} =    Get Browser Desired Capabilities
    Log    ${capabilities}
    Log Source
    [Teardown]    Close Browser
