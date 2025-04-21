*** Settings ***
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/Keywords.robot
Resource    ../Resources/HomePage.robot
Resource    ../Resources/Keywords.robot
Library     SeleniumLibrary

*** Variables ***
${USERNAME}      standard_user
${PASSWORD}      secret_sauce

*** Test Cases ***
Add Items To Cart
    Open Browser To SauceDemo
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login Button
    @{items} = 
    Add Item To Cart    Sauce Labs Backpack
    Verify Cart Count   1
    [Teardown]    Close Browser
