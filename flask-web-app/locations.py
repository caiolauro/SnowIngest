import requests
import json

class LocationAPI:
    url:str = 'http://api.ipstack.com/{0}?access_key=694d92e1f1ad776be53fb1cc636e1d6d'
    @staticmethod
    def get_info_from_ip(ip_address:str):
        response = requests.get(LocationAPI.url.format(ip_address))
        jsonResponse = json.loads(response.text)
        return jsonResponse