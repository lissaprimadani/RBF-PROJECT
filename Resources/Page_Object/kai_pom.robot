*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/kai_locators.py
Library    Collections

*** Variables ***
${url}    https://www.kai.id/
${Browser}    chrome


*** Keywords ***

got home page kai
    Open Browser    ${url}    ${Browser}
    Set Selenium Implicit Wait    5
    Maximize Browser Window


cek sudah berada di home page kai
    Element Should Contain    ${titlePesanTiket}    PEMESANAN TIKET


klik form stasiun awal
    Click Element    ${sAwal}
    
search stasiun awal
    [Arguments]    ${stasiunawal}
    Input Text    ${txStasiunAwal}    ${stasiunawal}

pilih stasiun awal yang dicari   
    Click Element    ${pilihStasiun}

klik form stasiun akhir
    Click Element    ${sAkhir}

search stasiun akhir   
    [Arguments]    ${stasiunakhir}
    Input Text    ${txStasiunAkhir}    ${stasiunakhir}

pilih stasiun akhir yang dicari
    Click Element    ${pilihStasiun}

klik form tanggal keberangkatan
    Click Element   ${tanggalBerangkat}   

# pilih tanggal keberangkatan    
#     [Arguments]    ${tgl}
#     Click element    ${pilihTgl}    ${tgl}

pilih tanggal keberangkatan
    Click element    ${pilihTgl}

klik button pesan dan cari kereta
    Click element    ${buttonCariKereta}
    Set Selenium Implicit Wait    5


berhasil mencari kota
    [Arguments]    ${hasilpencarian}
    Element Should Contain    ${hasil}    ${hasilpencarian}
