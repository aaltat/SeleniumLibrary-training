*** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Test Cases ***
Waiting Dynamic Content
    Open Browser    http://the-internet.herokuapp.com/dynamic_loading/1    Chrome
    Wait Until Page Contains Element     //button
    Click Button                         Start
    Wait Until Element Is Visible        //*[@id='loading']
    Wait Until Element Is Not Visible    //*[@id='loading']    timeout=20
    Wait Until Element Is Visible        //div[@id='finish']/h4

Waiting Unknow Content
    Go To    http://the-internet.herokuapp.com/dynamic_content
    Wait Until Page Contains Element     (//div[@id='content']//img)[1]
    Wait Until Page Contains Element     (//div[@id='content']//img)[2]
    Wait Until Page Contains Element     (//div[@id='content']//img)[3]

*** Keywords ***
