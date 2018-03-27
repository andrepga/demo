*** Settings ***
Library  Selenium2Library


*** Variables ***
${ADD_CART_BUTTON} =  id=add-to-cart-button
${CONTINUE_CART_BUTTON}=  xpath=//*[@id="smartShelfAddToCartNative"]


*** Keywords ***
Verify Product Page
    wait until page contains  Back to search results for "${PRODUCT}"


Add Product to Cart
    sleep  2
    click button  ${ADD_CART_BUTTON}


Verify Product Added
    wait until page contains  Added to your Cart


Add To Continue
    click button  ${CONTINUE_CART_BUTTON}