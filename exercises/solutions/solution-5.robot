*** Settings ***
Documentation    Navigate to the LazyLoad or "look at" page an then
...              select to view a different number of things for
...		 Exercise #5.

Library    SeleniumLibrary
Suite Teardown  Close All Browsers

*** Test Cases ***
Select To View More Items
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  id:username_field  demo
    Input Text  id:password_field  mode
    Click Element  id:login_button
    Page Should Contain    Welcome Page
    
    Click Element  id:lazyload
    Wait Until Page Contains Element  css:select[name='DataTables_Table_0_length']
    List Selection Should Be  css:select[name='DataTables_Table_0_length']  10
    Select From List By Label  css:select[name='DataTables_Table_0_length']  50
    List Selection Should Be  css:select[name='DataTables_Table_0_length']  50


A More Complex Solution With Verification
    Open Browser  http://localhost:7272/index.html  Chrome
    Input Text  id:username_field  demo
    Input Text  id:password_field  mode
    Click Element  id:login_button
    Page Should Contain    Welcome Page
    
    Click Element  id:lazyload
    Wait Until Page Contains Element  css:select[name='DataTables_Table_0_length']
    List Selection Should Be  css:select[name='DataTables_Table_0_length']  10
    Select From List By Label  //select[@name='DataTables_Table_0_length']  50

    Verify Number Of Things Shown Is Less Than 50
    Run Keyword And Expect Error  Expecting maximum number to show is 5 but 29 are visible.
    ...  Verify Number Of Things Shown Is Less Than 5

*** Keywords ***
Verify Number Of Things Shown Is Less Than ${max}
    ${thingCountStr}=  Get Text  css:#DataTables_Table_0 tbody tr:last-child
    ${lessthan}=  Evaluate  int(${thingCountStr}) <= int(${max})
    Run Keyword If  not ${lessthan}  Fail  Expecting maximum number to show is ${max} but ${thingCountStr} are visible.