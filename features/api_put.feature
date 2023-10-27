Feature: PUT method
  As a user
  I want to go to jsonplaceholder API
  In order to send a put request

  @put_method
  Scenario Outline: PUT call
    When the user sends PUT call to <endpoint> with following information: <data>
    Then the request status code is 200
    Then the response contains following information: <data>
    Examples:
    | endpoint    | data |
    | /posts/1    | {"title": "This is the title", "body": "This is the body"}                |
    | /users/1    | {"name": "Tony", "username": "tony.jj"}                                   |
    | /comments/1 | {"name": "This is the name", "email": "email@yahoo.com"}                  |
    | /albums/1   | {"userId": "10", "title": "This is the title"}                            |
    | /photos/1   | {"title": "Photo title", "url": "https://via.placeholder.com/600/92c876"} |
    | /todos/1    | {"title": "Todos title", "completed": "false"}                            |