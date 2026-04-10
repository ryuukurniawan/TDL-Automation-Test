*** Settings ***
Documentation    Validation for Real-time Data Injection
Resource    ../steps/dashboard_steps.resource
Test Teardown    Close Browser

*** Test Cases ***
Verify Real-time Data Injection without Page Refresh
    [Tags]    Regression    Realtime
    Given User accesses TDL Dashboard
    When User click the inject tracks button
    Then Data Grid should update with new tracks
    And Page should not perform a full refresh
    And State change should occur in real-time