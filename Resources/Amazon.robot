*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot


*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResult.Verify Search Completed


Select Product from Search Result
    SearchResult.Click Product Link
    Product.Add Product to Cart


Add Product to Cart
    Cart.Verify Product Added
    Cart.Add To Cart Native
    Cart.Verify Add To Cart Native


Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
