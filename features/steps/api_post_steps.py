from behave import step
from utilities.api_interactions import ApiInteractions
import json

api_interactions = ApiInteractions()


@step("the user sends POST call to {endpoint} with following information: {data}")
def post_method(context, endpoint: str, data: str):
    payload = json.loads(data)
    context.response = api_interactions.post_call(endpoint, payload)


@step("the request status code is 201")
def verify_status_code(context):
    assert context.response.status_code == 201, "Unexpected status code"


@step("the response contains following information: {data}")
def verify_response_data(context, data: str):
    payload = json.loads(data)
    response_body = context.response.json()
    assert payload.items() <= response_body.items(), "Unexpected response data"