*** Settings ***
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown   End Web Test

#   robot -d Results Tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to landing page
    FrontOfficeApp.Go to "Team" page

"Team" page should match requirements
    [Documentation]  This is test 2
    [Tags]  test2
    FrontOfficeApp.Go to landing page
    FrontOfficeApp.Go to "Team" page
    FrontOfficeApp.Validate "Team" page

