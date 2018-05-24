***Setting***
Library         Selenium2Library

***Variables***
${URL}      http://127.0.0.1:7272
${USERNAME}  demo
${PASSWORD}  mode

***Test Case***
Valid Login
    Open Browser        ${URL}      browser=gc  
    Input Text      username_field          ${USERNAME}
    Input Password      password_field          ${PASSWORD}
    Click Button        login_button
    Page Should Contain         Welcome Page

