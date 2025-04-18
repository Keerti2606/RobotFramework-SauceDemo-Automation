*** Keywords ***
Open Browser To SauceDemo
    Open Browser    ${URL}    chrome
    Maximize Browser Window

*** Keywords ***
Execute Login Test
    [Arguments]    ${username}    ${password}    ${expected}
    Open Browser To SauceDemo
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Run Keyword If    '${expected}' == 'pass'    Page Should Contain Element    id:inventory_container
    ...    ELSE    Page Should Contain Element    //button[@class='error-button']
    Close Browser
