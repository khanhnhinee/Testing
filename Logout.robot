*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${browser}  chrome
${trac_nghiem_vn_ulr}   https://tracnghiem.vn/
${user_name}  seoyool2_
${pass_word}  123123
*** Test Cases ***
Logout Test
    Open Browser    ${trac_nghiem_vn_ulr}     ${browser}
    Maximize Browser Window
    sleep  2s
    Wait Until Page Contains Element    xpath://span[contains(text(),'Đăng nhập')]
    Click Element  xpath://span[contains(text(),'Đăng nhập')]
    input text      //input[@id='username']    ${user_name}
    input password      //input[@id='password']  ${pass_word}
    click button   //button[contains(text(),'Đăng nhập')]
    Page should contain element  //header/div[1]/div[1]/div[2]/div[1]/div[1]/button[1]/div[1]/img[1]
    Click button  //header/div[1]/div[1]/div[1]/div[3]/div[1]/button[1]
    Click Link  Đăng xuất
    close browser



