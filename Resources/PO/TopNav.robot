*** Settings ***
Library  Selenium2Library


*** Variables ***
${SEARCH_FIELD} =  xpath=//*[@id="twotabsearchtextbox"]
${SEARCH_BUTTON} =  xpath=/html/body/div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input


*** Keywords ***
Search for Products
    Enter Term
    Submit Search


Enter Term
    sleep  2
    input text  ${SEARCH_FIELD}  ${PRODUCT}


Submit Search
    click button  ${SEARCH_BUTTON}
