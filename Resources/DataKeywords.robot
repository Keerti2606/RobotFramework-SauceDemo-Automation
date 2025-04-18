*** Settings ***
Library    RPA.Excel.Files

*** Variables ***
${EXCEL_PATH}    TestData/credentials.xlsx


*** Keywords ***
Read Test Data From Excel
    Open Workbook    ${EXCEL_PATH}
    ${rows}=    Read Worksheet As Table    header=True
    FOR    ${row}    IN    @{rows}
        ${username}=    Set Variable    ${row}[Username]
        ${password}=    Set Variable    ${row}[Password]
        ${expected}=    Set Variable    ${row}[ExpectedResult]
        Execute Login Test    ${username}    ${password}    ${expected}
    END
    Close Workbook

