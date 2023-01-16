*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot
*** Variables ***


*** Keywords ***
Go to landing page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to "Team" page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" page
    Team.Validate Page Contents