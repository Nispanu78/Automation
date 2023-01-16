*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SERVICES_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a

*** Keywords ***
Select "Services" page
    click link  ${SERVICES_LINK}
    sleep  3s