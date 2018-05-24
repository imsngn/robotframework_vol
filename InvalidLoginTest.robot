***Setting***
Library         Selenium2Library

***Variables***
${URL}      http://127.0.0.1:7272
${USERNAME}  demo
${PASSWORD}  mode

***Test Case***
Invalid Username Login
    Open Browser        ${URL}      browser=gc  
    Input Text          username_field          error
    Input Password      password_field          ${PASSWORD}
    Click Button        login_button
    Page Should Contain         Error Page
    Close Browser

    
Invalid Password Login
    Open Browser        ${URL}      browser=gc  
    Input Text          username_field         ${USERNAME} 
    Input Password      password_field          error
    Click Button        login_button
    Page Should Contain         Error Page
    Close Browser

    
Invalid Both Login
    Open Browser        ${URL}      browser=gc  
    Input Text          username_field          error
    Input Password      password_field          error
    Click Button        login_button
    Page Should Contain         Error Page
    Close Browser

    
