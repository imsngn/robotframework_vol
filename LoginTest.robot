***Setting***
Library         Selenium2Library


***Test Case***
Valid Login
    Open Browser        http://localhost:7272       browser=gc  
    Input Text      username_field          demo
    Input Password      password_field          mode
    Click Button        login_button
    Page Should Contain         Welcome Page
