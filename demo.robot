*** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers


*** Variable ***
${BROWSER}        chrome
${URL}            https://www.google.com/


*** Test Case ***
Search selenium in google
    Open Browser           ${URL}             ${BROWSER}
    Input text             name=q             selenium
    Press Key              name=q             \\13
    Page Should Contain    selenium


Search robot framework in google
    Open Browser           ${URL}             ${BROWSER}
    Input text             name=q             robot framework
    Press Key              name=q             \\13
    Page Should Contain    robot framework



