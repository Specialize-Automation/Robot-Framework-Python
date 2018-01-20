*** Settings ***
Documentation       Testing MercuryTours Website Keywords
Library             Selenium2Library
Library             BuiltIn
Library             Test.Locators.Locators.Locator
Variables           ../Variable/Variables.py
Variables           ../Locators/Elements.py

*** Keywords ***

Open Mercury Website in Chrome and Maximize
    Open Browser  url=${URL}  browser=chrome
    Maximize Browser Window
    #Log  Browser is Maximized
    Log to console  Browser is Maximized

Verify the Home page title
    Title Should Be  ${title}
    Log to console  Home Page Title Verified