*** Settings ***
Library  Selenium2Library

*** Keywords ***
Go to Page
    go to  https://www.amazon.com
    wait until page contains   Your Amazon.com


Search for Products
    input text  xpath=//*[@id="twotabsearchtextbox"]  Nintendo Switch - Neon Blue and Red Joy-Con
    click button  xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
    wait until page contains  results for "Nintendo Switch - Neon Blue and Red Joy-Con"


Select Product from Search Result
    click link  xpath=//*[@id="result_0"]/div/div[2]/div/div[2]/div[1]/div[1]/a
    wait until page contains  Back to search results for "Nintendo Switch - Neon Blue and Red Joy-Con"


Add Product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Added to your Cart


Continue to Cart
    click button  xpath=//*[@id="smartShelfAddToCartNative"]
    wait until page contains  Shopping Cart


Proceed to Checkout
    click button  xpath=/html/body/div[1]/div[4]/div/div[4]/div/div[1]/div[1]/form/div[3]/div[2]/div/div[3]/span/span/input
    wait until page contains  Sign in
