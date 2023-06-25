import datetime
from robot.api.deco import keyword

@keyword('Date Now')
def Date_Now():
    sekarang = datetime.datetime.now()
    tgl = sekarang.strftime("%d/%m/%Y")
    print(tgl)
    #return tanggal

@keyword("Cetak Nama")
def nama(namanya):
    print(f'nama saya {namanya}')