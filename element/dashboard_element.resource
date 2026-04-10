*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

${btnInject500}       id=btn-inject-tracks
${btnStopStream}      id=btn-stop-stream
${tableDataGrid}      id=tdl-data-grid
${firstRowId}         xpath=//table[@id='tdl-data-grid']/tbody/tr[1]/td[1]
${statusIndicator}    id=system-status