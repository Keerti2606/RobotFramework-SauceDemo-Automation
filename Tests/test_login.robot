*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/LoginPage.robot
Resource          ../Resources/Keywords.robot
Suite Setup       Open Browser To SauceDemo
Suite Teardown    Close Browser

*** Test Cases ***
Valid Login Test
    [Tags]    smoke
    Input Username    standard_user
    Input Password    secret_sauce
    Click Login Button
    Page Should Contain Element    id:inventory_container
