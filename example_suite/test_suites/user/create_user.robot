*** Settings ***
Resource          ../../resoruces/user.robot
Force Tags        user_create    user
Suite Setup       Do Login
Test Teardown     Go To    ${WELCOME URL}

*** Test Cases ***
Create User
    Create User    foo    bar     foo@bar.com
    User Crfeation Should Be Succesfull    foo     foo@bar.com

Create User Which Does Exist
    Create User    warning     bar     foo@bar.com
    Creating Exsiting User Should Not Be Succesfull    warning

Create User Which End In Error
    Create User    error     bar     foo@bar.com
    Creating User End In Error    error
