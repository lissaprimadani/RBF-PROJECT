import psycopg2
from robot.api.deco import keyword

@keyword('Select Data')
def selectdata(dbname,table,docondition):
    print("hore")

