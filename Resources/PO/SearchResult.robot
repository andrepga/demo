*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    wait until page contains  results for "PlayStation 4 Pro 1TB Console"

Click Product Link
    click link  xpath=//*[@id="result_0"]/div/div/div/div[2]/div[2]/div[1]/a
