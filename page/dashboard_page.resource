*** Settings ***
Library    SeleniumLibrary
Resource    ../element/dashboard_element.resource

*** Keywords ***
Open TDL Dashboard
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click Inject 500 Tracks
    Click Element    ${btnInject500}

Get Current First Track ID
    ${idTrack}=    Get Text    ${firstRowId}
    RETURN    ${idTrack}

Verify Page Did Not Refresh
    ${status}=    Execute Javascript    return window.performance.navigation.type
    Should Be Equal As Integers    ${status}    0

Wait For Data Change
    [Arguments]    ${oldIdtrack}
    Wait Until Element Contains    ${firstRowId}    TRK-    timeout=10s
    ${newIdTrack}=    Get Text    ${firstRowId}
    Should Be Equal    ${oldIdtrack}    ${newIdTrack}    

State change verification occurs in real-time
    ${statusReal}=    Get Text    ${statusIndicator}
    Element Should Contain    ${statusReal}    500