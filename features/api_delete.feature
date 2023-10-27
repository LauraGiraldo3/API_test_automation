Feature: DELETE method
  As a user
  I want to go to jsonplaceholder API
  In order to send a delete request

  @delete_method
  Scenario Outline: DELETE call
    When the user sends DELETE call to <endpoint>
    Then the request status code is 200
    Examples:
    | endpoint    |
    | /posts/3    |
    | /users/3    |
    | /comments/3 |
    | /albums/3   |
    | /photos/3   |
    | /todos/3    |