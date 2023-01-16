*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SERVICES_PAGE_ELEMENT} =  xpath=//*[@id="services"]/div/div[1]/div/h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${SERVICES_PAGE_ELEMENT}

Validate Page Contents
    ${Element_text} =  get text  ${SERVICES_PAGE_ELEMENT}
    should be equal as strings   ${Element_text}  Services  ignore_case=true
    #This fails in chrome
    #element text should be  ${SERVICES_PAGE_ELEMENT}  Services