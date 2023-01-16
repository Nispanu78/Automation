*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  subtotal


Proceed to Checkout
    Click element  name=proceedToRetailCheckout