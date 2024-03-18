#!/usr/bin/env python3

import requests

def curl_wttr():
    url = "https://wttr.in"
    response = requests.get(url)
    
    if response.status_code == 200:
        data = response.text
        print(data)
    else:
        print("Error to get weather data")

if __name__ == "__main__":
    curl_wttr()