*** Settings ***
Resource    ../Resources/Page_Object/kai_pom.robot


*** Keywords ***
Sebagai user saya membuka website KAI
    got home page kai
    cek sudah berada di home page kai

When Sebagai user saya menginputkan stasiun awal
    [Arguments]    ${stasiunawal}
    klik form stasiun awal
    search stasiun awal    ${stasiunawal}
    pilih stasiun awal yang dicari


Sebagai user saya menginputkan stasiun akhir
    [Arguments]    ${stasiunakhir}
    klik form stasiun akhir
    search stasiun akhir   ${stasiunakhir}
    pilih stasiun akhir yang dicari
    

Sebagai user saya menginputkan tanggal keberangkatan
    #[Arguments]    ${tgl}
    klik form tanggal keberangkatan
    #pilih tanggal keberangkatan    ${tgl}
    pilih tanggal keberangkatan

Sebagai user saya menginputkan tidak ada bayi yang ikut
    klik form bayi yang ikut
    pilih dengan usia 0

Sebagai user saya memencet button pesan dan cari kereta
    klik button pesan dan cari kereta

Sebagai user saya melihat informasi kereta yang dicari
    [Arguments]    ${hasilpencarian}
    berhasil mencari kota    ${hasilpencarian}