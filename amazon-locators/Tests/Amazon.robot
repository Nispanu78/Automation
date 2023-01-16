*** Settings ***
Documentation  This is some basic info about the whole suite which have been committed to GitHub
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/AmazonApp.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results -i current Tests/Amazon.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458
${LOGIN_EMAIL} =  admin@robotrameworktutorial.com
${LOGIN_PASSWORD} =  myPassword1

*** Test Cases ***
Should be able to login
    [Tags]  login  credentials
    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user should be able to search for products
    [Tags]  search
    AmazonApp.Search for Products  ${SEARCH_TERM}

Search results page should contain product
    [Tags]  current
    AmazonApp.Search for Products  ${SEARCH_TERM}
    AmazonApp.Verify Results Page Contains Products  //div[contains(@data-component-type, "s-search-result")]

Logged out user should be able to select a product from search results
    [Tags]  product
    AmazonApp.Search for Products  ${SEARCH_TERM}
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Tags]  cart
    AmazonApp.Search for Products  ${SEARCH_TERM}
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to check out
    [Tags]  checkout
    AmazonApp.Search for Products  ${SEARCH_TERM}
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
