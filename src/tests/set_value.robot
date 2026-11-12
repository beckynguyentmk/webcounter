*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Test Setup  Reset Counter
Suite Teardown  Close Browser

*** Test Cases ***
When user sets the counter a new value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa

