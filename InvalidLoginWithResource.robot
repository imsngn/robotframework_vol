***Setting***
Library         Selenium2Library
Resource        resource.robot


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

