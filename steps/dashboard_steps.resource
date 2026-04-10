*** Settings ***
Resource    ../page/dashboard_page.resource

*** Keywords ***
User accesses TDL Dashboard
    Open TDL Dashboard

User click the inject tracks button
    ${oldIdtrack}=    Get Current First Track ID
    Set Global Variable    ${previousId}    ${oldIdtrack}
    Click Inject 500 Tracks

Data Grid should update with new tracks
    Wait For Data Change    ${previousId}

Page should not perform a full refresh
    Verify Page Did Not Refresh

State change should occur in real-time
    State change verification occurs in real-time