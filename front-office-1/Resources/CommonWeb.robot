*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    OPEN BROWSER  about:blank  ${BROWSER}

End Web Test
    close all browsers
