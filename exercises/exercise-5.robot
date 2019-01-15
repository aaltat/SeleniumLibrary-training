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

    Fail  Not Yet Implemented
