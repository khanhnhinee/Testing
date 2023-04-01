*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${SEARCH URL}      https://tracnghiem.vn/
${KEYWORD}         "Thi bằng lái xe máy A1"
*** Test Cases ***
Search Test
    Open Browser     ${SEARCH URL}   Chrome
    Maximize Browser Window
    Sleep    2s
    Input Text      //input[@id='input_keyword']    ${KEYWORD}
    Click Element    //span[contains(text(),'Tìm')]
    Page Should Contain Element    //h1[contains(text(),'Danh sách đề thi')]
    Close Browser
