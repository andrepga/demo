*** Settings ***
Library  Selenium2Library


*** Keywords ***
Search for Products
    Enter Term
    Submit Search

Enter Term
    sleep  2
    input text  xpath=//*[@id="twotabsearchtextbox"]  ${PRODUCT}

Submit Search
    click button  xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
