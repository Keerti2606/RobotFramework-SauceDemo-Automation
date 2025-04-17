*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME_FIELD}    id:user-name
${PASSWORD_FIELD}    id:password
${LOGIN_BUTTON}      id:login-button

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}
Click Login Button
    Click Button    ${LOGIN_BUTTON}