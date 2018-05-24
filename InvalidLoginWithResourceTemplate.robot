***Setting***
Library         Selenium2Library
Resource        resource.robot
Test Template        Invalid Login Test 
Suite Setup     Open WebPage
Suite Teardown  Close Browser


***Test Case***
Invalid Username Login              error           ${PASSWORD}
Invalid Password Login              ${USERNAME}     error
Invalid Both Login                  error           error
Invalid Other Login                 ${EMPTY}        ${PASSWORD}

***Keywords***    
Invalid Login Test 
    [Arguments]     ${usernameData}         ${pswData}
    Input Text and Password         ${usernameData}     ${pswData}
    Click Login Button
    Error Page Should Display
    [Teardown]      Go to               ${URL}
