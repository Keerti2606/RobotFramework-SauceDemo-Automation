*** Settings ***
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/HomePage.robot
Resource    ../Resources/CheckoutPage.robot
Resource    ../Resources/Keywords.robot
Library     SeleniumLibrary

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Complete Checkout Flow
    Open Browser To SauceDemo
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Add Item To Cart    Sauce Labs Backpack
    sleep   10s
    Click Cart Icon
    sleep   10s
    Click Checkout Button
    Fill Checkout Information    Keerti    QA    560001
    Click Continue And Finish
    Verify Order Success Message
    [Teardown]    Close Browser
