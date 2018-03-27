*** Settings ***
Documentation  This is a basic about whole suite
Resource  ../Resources/Amazon.robot
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
    Amazon.Load Page


Logged out user can search for products
    [Documentation]  Logged out user can search for products
    [Tags]  Smoke
    Amazon.Load Page
    Amazon.Search for Products


Logged out user can view a product
    [Documentation]  Logged out user can view a product
    [Tags]  Smoke
    Amazon.Load Page
    Amazon.Search for Products
    Amazon.Select Product from Search Result


Logged out user can add product to cart
    [Documentation]  Logged out user can add product to cart
    [Tags]  Smoke
    Amazon.Load Page
    Amazon.Search for Products
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart


User must sign in to check out
    [Documentation]  The user must must sign to check out
    [Tags]  Smoke
    Amazon.Load Page
    Amazon.Search for Products
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart
    Amazon.Begin Checkout


