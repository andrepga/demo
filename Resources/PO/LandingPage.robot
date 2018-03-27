*** Settings ***
Library  Selenium2Library


*** Keywords ***
Load
    go to  ${URL}


Verify Page Loaded
    sleep  2
    wait until page contains   Your Amazon.com