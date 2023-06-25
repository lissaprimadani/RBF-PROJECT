from webbrowser import get
import requests
from robot.api.deco import keyword


@keyword('GET API')
def getAPI(url,param):
    # url = "https://reqres.in/api/users"
    # param = {"page"="2"}
    resp = requests.get(url,params=param)
    # return resp.text
    return resp.json()