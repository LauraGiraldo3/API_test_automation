Feature: GET method
  As a user
  I want to go to jsonplaceholder API
  In order to make get requests

  @get_method
  Scenario Outline: GET call successfully
    When the user sends GET call to <endpoint>
    Then the request status code is 200
    Then the type of response is <data_type> and contains following information: <data>
    Examples:
    | endpoint    | data_type | data                                          |
    | /users      | list      | {"name": "Leanne Graham", "username": "Bret"} |
    | /posts      | list      | {"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"} |
    | /comments   | list      | {"name": "id labore ex et quam laborum", "email": "Eliseo@gardner.biz"} |
    | /albums     | list      | {"id": 1, "title": "quidem molestiae enim"} |
    | /photos     | list      | {"title": "accusamus beatae ad facilis cum similique qui sunt", "url": "https://via.placeholder.com/600/92c952"} |
    | /todos      | list      | {"title": "delectus aut autem", "completed": false} |
    | /users/2    | dict      | {"name": "Ervin Howell", "username": "Antonette"} |
    | /posts/2    | dict      | {"title": "qui est esse", "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"} |
    | /comments/2 | dict      | {"name": "quo vero reiciendis velit similique earum", "email": "Jayne_Kuhic@sydney.com"} |
    | /albums/2   | dict      | {"id": 2, "title": "sunt qui excepturi placeat culpa"} |
    | /photos/2   | dict      | {"title": "reprehenderit est deserunt velit ipsam", "url": "https://via.placeholder.com/600/771796"} |
    | /todos/2    | dict      | {"title": "quis ut nam facilis et officia qui", "completed": false} |

  @get_method_invalid
  Scenario Outline: GET call invalid
    When the user sends GET call to <endpoint>
    Then the request status code is 404
    Examples:
    | endpoint   |
    | /resources |
    | /users/20  |