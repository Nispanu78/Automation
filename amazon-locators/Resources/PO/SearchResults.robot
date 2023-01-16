*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    [Arguments]  ${SearchTerm}
    wait until page contains  ${SearchTerm}

Verify Product Count
    [Arguments]  ${ExpectedProductCount}
    page should contain element  ${ExpectedProductCount}  limit=60

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
#    click link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div/div/div[3]/div[1]/h2/a
    click link  link=RASTAR Ferrari Remote Control Car, 1/24 Scale Ferrari 458 Italia Model Car, Red Ferrari Toy Car