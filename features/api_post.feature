Feature: POST method
  As a user
  I want to go to jsonplaceholder API
  In order to send a post request

  @post_method
  Scenario Outline: POST call
    When the user sends POST call to <endpoint> with following information: <data>
    Then the request status code is 201
    Then the response contains following information: <data>
    Examples:
    | endpoint  | data |
    | /posts    | {"title": "This is the title", "body": "This is the body"}                |
    | /users    | {"name": "Tony", "username": "tony.jj"}                                   |
    | /comments | {"name": "This is the name", "email": "email@yahoo.com"}                  |
    | /albums   | {"userId": "10", "title": "This is the title"}                            |
    | /photos   | {"title": "Photo title", "url": "https://via.placeholder.com/600/92c876"} |
    | /todos    | {"title": "Todos title", "completed": "false"}                            |
