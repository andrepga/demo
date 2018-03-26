*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    open browser  about:blank  ff
    sleep  2

End Web Test
    sleep  2
    close browser


Insert Data Testing
    Log  I am setting up the test data...


Cleanup Data Testing
    Log  I am cleaning up the test data...