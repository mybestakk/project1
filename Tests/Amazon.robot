*** Settings ***
Documentation  This is some basic info about the whole suite

Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    open browser  http://www.amazon.com  ie
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  css=#nav-search > form > div.nav-right > div > input
    wait until page contains  results for "Ferrari 458"
    click link  css=#result_1 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Cart subtotal (1 item):

    click link  css=#hlb-ptc-btn-native
    wait until page contains  Sign in

    close browser

*** Keywords ***
