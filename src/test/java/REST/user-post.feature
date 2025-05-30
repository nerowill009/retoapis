Feature: Caso de prueba POST

  Scenario Outline: Caso de prueba tipo POST <Caso>

    Given url 'https://serverest.dev/' + '/usuarios'
    When request
      """
      {
      "nome": <Vnome>,
      "email": <Vemail>,
      "password": "teste",
      "administrador": "true"
      }
      """
    And method POST
    Then status <statusA>
    And match response ==
  """
  {
    'message': '#string',
    '_id': '#string'
  }
  """
    Examples:
      | Caso             | Vnome             | Vemail                   | statusA |
      | Caso Positivo 1  | 'Josue Villegas' | 'josuevillegas1@test.com'  | 201     |
      | Caso negativo  2 | 'Danna Villegas' | 'dannavillegas12@test.com' | 201     |


