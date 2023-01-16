*** Settings ***
Documentation  Basic test automation
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp2.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d Results Tests/Front_Office2.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://automationplayground.com/front-office/


*** Test Cases ***
Should be able to access "Services" page
    [Documentation]  This test has the purpose of checking whether the "Services" page is accessible
    [Tags]  test1
    FrontOfficeApp2.Go to Landing page
    FrontOfficeApp2.Go to "Services" page

"Services" page should match requirements
    [Documentation]  This test has the purpose of checking whether the "Services" page match business requirements
    [Tags]  test2
    FrontOfficeApp2.Go to Landing page
    FrontOfficeApp2.Go to "Services" page
    FrontOfficeApp2.Validate "Services" page
