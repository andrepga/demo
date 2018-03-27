*** Settings ***
Library  Selenium2Library


*** Keywords ***
Verify Product to Cart
    wait until page contains  Back to search results for "${PRODUCT}"

Add Product to Cart
    sleep  2
    click button  id=add-to-cart-button


