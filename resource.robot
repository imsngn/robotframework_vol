***Setting***
Library         Selenium2Library

***Variables***
${URL}      http://127.0.0.1:7272
${USERNAME}  demo
${PASSWORD}  mode

***Keywords***    
Open Webpage
    Open Browser        ${URL}      browser=gc  

Input Text and Password
    [Arguments]     ${user}      ${psw}
    Input Text            username_field      ${user}
    Input Password        password_field      ${psw}

Click Login Button
    Click Button        login_button

Error Page Should Display
    Page Should Contain         Error Page

