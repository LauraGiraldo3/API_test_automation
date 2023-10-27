import requests
from dotenv import load_dotenv
import os

load_dotenv()


class ApiInteractions:
    def __init__(self):
        self.api_url = os.getenv("URL")

    def get_call(self, endpoint: str):
        uri = self.api_url + endpoint
        response = requests.get(uri)
        return response

    def post_call(self, endpoint: str, data: dict):
        uri = self.api_url + endpoint
        response = requests.post(uri, data)
        return response

    def put_call(self, endpoint: str, data: dict):
        uri = self.api_url + endpoint
        response = requests.put(uri, data)
        return response

    def patch_call(self, endpoint: str, data: dict):
        uri = self.api_url + endpoint
        response = requests.patch(uri, data)
        return response

    def delete_call(self, endpoint: str):
        uri = self.api_url + endpoint
        response = requests.delete(uri)
        return response

