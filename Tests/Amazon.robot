*** Settings ***
Documentation  This is a basic about whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Data Testing
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Data Testing

*** Variables ***
${BROWSER} =  ff
${URL} =  https://www.amazon.com
${PRODUCT} =  PlayStation 4 Pro 1TB Console

*** Test Cases ***
Load Amazon Page
    [Documentation]  Only verify if the amazon page opens
    [Tags]  First
    AmazonApp.Load Page


Logged out user can search for products
    [Documentation]  Logged out user can search for products
    [Tags]  Smoke
    AmazonApp.Load Page
    AmazonApp.Search for Products


Logged out user can view a product
    [Documentation]  Logged out user can view a product
    [Tags]  Smoke
    AmazonApp.Load Page
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Result


Logged out user can add product to cart
    [Documentation]  Logged out user can add product to cart
    [Tags]  Smoke
    AmazonApp.Load Page
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Result
    AmazonApp.Add Product to Cart


User must sign in to check out
    [Documentation]  The user must must sign to check out
    [Tags]  Last
    AmazonApp.Load Page
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Result
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


