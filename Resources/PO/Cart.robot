*** Settings ***
Library  Selenium2Library


*** Keywords ***
Verify Product Added
    wait until page contains  Added to your Cart


Add To Continue
    click button  xpath=//*[@id="smartShelfAddToCartNative"]


Verify To Continue
    sleep  2
    wait until page contains  Shopping Cart

Proceed to Checkout
    sleep  2
    click button  xpath=/html/body/div[1]/div[4]/div/div[4]/div/div[1]/div[1]/form/div[3]/div[2]/div/div[3]/span/span/input