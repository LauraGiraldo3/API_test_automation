from behave import step
from utilities.api_interactions import ApiInteractions
import json

api_interactions = ApiInteractions()


@step("the user sends POST call to {endpoint} with following information: {data}")
def post_method(context, endpoint: str, data: str):
    payload = json.loads(data)
    context.response = api_interactions.method_call("POST", endpoint, data=payload)


@step("the request status code is 201")
def verify_status_code(context):
    assert context.response.status_code == 201, "Unexpected status code"
