*** Settings ***
Documentation    Suite description
Resource          ../resoruces/login.robot
Suite Setup       Open Browser To Login Page
Suite Teardown    Close All Browsers
