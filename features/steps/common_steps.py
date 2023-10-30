from behave import step
from utilities.api_interactions import ApiInteractions
import json

api_interactions = ApiInteractions()


@step("the request status code is 200")
def verify_status_code(context):
    assert context.response.status_code == 200, "Unexpected status code"


@step("the response contains following information: {data}")
def verify_response_data(context, data: str):
    payload = json.loads(data)
    response_body = context.response.json()
    assert payload.items() <= response_body.items(), "Unexpected response data"