*** Settings ***
Resource          ../../resoruces/user.robot
Force Tags      user_delete    user
Suite Setup     Do Login
Test Teardown   Go To    ${WELCOME URL}

*** Test Cases ***
Delete user
    Delete User    foo
    User Deletion Should Be Succesfull    foo

Delete User Which Does Not Exist
    Delete User    error
    User Deletion Should Not Be Succesfull    error
