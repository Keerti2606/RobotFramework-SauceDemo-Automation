*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/LoginPage.robot
Resource        ../Resources/Keywords.robot
Resource        ../Resources/DataKeywords.robot

*** Variables ***
${EXCEL_PATH}    ${CURDIR}/../TestData/credentials.xlsx

*** Test Cases ***
Login With Multiple Credentials
    Read Test Data From Excel
