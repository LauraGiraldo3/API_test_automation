from behave import step
from utilities.api_interactions import ApiInteractions

api_interactions = ApiInteractions()


@step("the user sends DELETE call to {endpoint}")
def delete_method(context, endpoint):
    context.response = api_interactions.method_call("DELETE", endpoint)
