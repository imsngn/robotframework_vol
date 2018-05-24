***Setting***
Library         Selenium2Library

***Variables***
${URL}      http://127.0.0.1:7272
${USERNAME}  demo
${PASSWORD}  mode

***Test Case***
Invalid Username Login
    Open Webpage
    Input Text and Password         error     ${PASSWORD}
    Click Login Button
    Error Page Should Display
    Close Browser

    
Invalid Password Login
    Open Webpage
    Input Text and Password         ${USERNAME}     error
    Click Login Button
    Page Should Contain         Error Page
    Close Browser

    
Invalid Both Login
    Open Webpage
    Input Text and Password         error     error
    Click Login Button
    Page Should Contain         Error Page
    Close Browser

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

