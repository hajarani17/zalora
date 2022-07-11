*** Settings ***
Documentation   Basic Search Functionality
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for zalora
    [Documentation]     This test case verifies functionality for zalora
    [Tags]                  Functional

    Start TestCase
    Verify Search Results
    Finish TestCase

*** Keywords ***

Start TestCase
     Open Browser        https://www.zalora.co.id/women/    Chrome
     Maximize Browser Window

Verify Search Results
    Input Text          //input[@name="q"]                 Tas
    Press Keys          //*[@class="icon_loupe-dark"]      RETURN
    Page Should Contain     Pencarian untuk : "Tas"

Finish TestCase
    Close Browser