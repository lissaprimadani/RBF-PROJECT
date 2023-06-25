**** Settings ***
Resource    ../Steps/kai_steps.robot


*** Test Cases ***

Cek harga kereta Malang Jakarta
    Given Sebagai user saya membuka website KAI
    When Sebagai user saya menginputkan stasiun awal    MALANG (ML)
    When Sebagai user saya menginputkan stasiun akhir    Bandung (BD)
    #When Sebagai user saya menginputkan tanggal keberangkatan    30
    When Sebagai user saya menginputkan tanggal keberangkatan
    # When Sebagai user saya menginputkan jumlah penumpang
    # When Sebagai user saya menginputkan tidak ada bayi yang ikut
    And Sebagai user saya memencet button pesan dan cari kereta
    Then Sebagai user saya melihat informasi kereta yang dicari    MALANG BANDUNG

