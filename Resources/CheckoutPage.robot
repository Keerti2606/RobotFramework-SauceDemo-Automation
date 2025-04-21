*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Login With Credentials
    [Arguments]     ${USERNAME}    ${PASSWORD}
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login Button
Click Cart Icon
    Click Element    class=shopping_cart_link

Click Checkout Button

    Click Button    //button[@id='checkout']

Fill Checkout Information
    [Arguments]    ${first}    ${last}    ${zip}
    Input Text    //input[@id='first-name']    ${first}
    Input Text    //input[@id='last-name']    ${last}
    Input Text    //input[@id='postal-code']   ${zip}

Click Continue And Finish
    Click Button    id=continue
    Click Button    id=finish

Verify Order Success Message
    Page Should Contain Element    xpath://h2[text()='Thank you for your order!']
