*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Services.robot
Resource  ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing page
    Landing.Navigate To
    Landing.Verify Page Loaded


Go to "Services" page
    TopNav.Select "Services" page
    Services.Verify Page Loaded

Validate "Services" page
    Services.Validate Page Contents