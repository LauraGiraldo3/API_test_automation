from behave import step
from utilities.api_interactions import ApiInteractions
import json

api_interactions = ApiInteractions()


@step("the user sends PATCH call to {endpoint} with following information: {data}")
def patch_method(context, endpoint: str, data: str):
    payload = json.loads(data)
    context.response = api_interactions.method_call("PATCH", endpoint, data=payload)
