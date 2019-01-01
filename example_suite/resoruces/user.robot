*** Settings ***
Resource    login.robot

*** Variables ***
${DELETE USER URL}    ${LOGIN URL}delete_user.html
${DELETE USER SUCCESFULL URL}    ${LOGIN URL}delete_user_success.html
${DELETE USER ERROR URL}    ${LOGIN URL}delete_user_error.html

${CREATE USER URL}    ${LOGIN URL}user.html
${CREATE USER SUCCESFULL URL}    ${LOGIN URL}user_success.html
${CREATE USER WARNING URL}        ${LOGIN URL}user_warning.html
${CREATE USER ERROR URL}         ${LOGIN URL}user_error.html


*** Keywords ***
Delete User
    [Arguments]    ${username}
    Click Link    delete user
    Delete User Page Should Be Open
    Input Username    ${username}
    Click Button      Delete

Delete User Page Should Be Open
    Location Should Be    ${DELETE USER URL}
    Title Should Be    Delete user

User Deletion Should Be Succesfull
    [Arguments]    ${username}
    Location Should Be    ${DELETE USER SUCCESFULL URL}?name=${username}
    Page Should Contain    User ${username} was deleted successfully.


User Deletion Should Not Be Succesfull
    [Arguments]    ${username}
    Location Should Be    ${DELETE USER ERROR URL}
    Page Should Contain    User ${username} does not exist

Create User
    [Arguments]    ${username}    ${password}    ${email}
    Click Link    create user
    Create User Page Should Be Open
    Input Username    ${username}
    Input Password    ${password}
    Input Email       ${email}
    Click Button      Create

Input Email
    [Arguments]    ${email}
    Input Text      email_field    ${email}

Create User Page Should Be Open
    Location Should Be    ${CREATE USER URL}
    Title Should Be    Create user

User Crfeation Should Be Succesfull
    [Arguments]    ${username}    ${email}
    Location Should Be    ${CREATE USER SUCCESFULL URL}?name=${username}&email=${email}
    Page Should Contain    User ${username} with email ${email} created successfully.

Creating Exsiting User Should Not Be Succesfull
    [Arguments]    ${username}
    Location Should Be    ${CREATE USER WARNING URL}
    Page Should Contain    User ${username} already exist,

Creating User End In Error
    [Arguments]    ${username}
    Location Should Be    ${CREATE USER ERROR URL}
    Page Should Contain    Something went wrong when ${username} user created,
