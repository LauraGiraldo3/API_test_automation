Feature: PATCH method
  As a user
  I want to go to jsonplaceholder API
  In order to send a patch request

  @patch_method
  Scenario Outline: PATCH call
    When the user sends PATCH call to <endpoint> with following information: <data>
    Then the request status code is 200
    Then the response contains following information: <data>
    Examples:
    | endpoint    | data |
    | /posts/2    | {"title": "This is the title"} |
    | /users/2    | {"name": "Tony"}               |
    | /comments/2 | {"name": "This is the name"}   |
    | /albums/2   | {"userId": "10"}               |
    | /photos/2   | {"title": "Photo title"}       |
    | /todos/2    | {"title": "Todos title"}       |