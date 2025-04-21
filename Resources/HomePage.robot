*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Add Item To Cart
    [Arguments]    ${product_name}
    Click Button    xpath://div[text()='${product_name}']/ancestor::div[@class='inventory_item']//button

Verify Cart Count
    [Arguments]    ${expected_count}
    ${cart_text}=    Get Text    class=shopping_cart_badge
    Should Be Equal As Strings    ${cart_text}    ${expected_count}
