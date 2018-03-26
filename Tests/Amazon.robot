*** Settings ***
Documentation  This is a basic about whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Data Testing
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Data Testing

*** Variables ***
# ${BROWSER}=ff


*** Test Cases ***
#Smoke Test
#    [Documentation]  Only verify if the amazon page opens
#    [Tags]  Smoke
#    Amazon.Go to Page


User must sign in to check out
    [Documentation]  The user must must sign to check out
    [Tags]  CheckOut
    Amazon.Search for Products
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart
    Amazon.Begin Checkout


