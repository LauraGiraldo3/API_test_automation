from behave import step
from utilities.api_interactions import ApiInteractions
import json

api_interactions = ApiInteractions()


@step("the user sends GET call to {endpoint}")
def get_method(context, endpoint: str):
    context.response = api_interactions.get_call(endpoint)


@step("the request status code is 404")
def verify_status_code(context):
    assert context.response.status_code == 404, "Unexpected status code"


@step("the type of response is {data_type} and contains following information: {data}")
def verify_response_data(context, data_type: str, data: str):
    response_body = context.response.json()
    assert data_type in str(type(response_body)), "Unexpected response type"
    if type(response_body) == list:
        data_to_assert = response_body[0]
    else:
        data_to_assert = response_body
    data_dict = json.loads(data)
    assert data_dict.items() <= data_to_assert.items(), "Unexpected response data"



