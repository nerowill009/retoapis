Feature: Caso de prueba PUT

  Scenario: Caso de prueba tipo PUT

    Given url 'https://serverest.dev/' + 'usuarios/WRRLFpHhQ1acv4Sn'
    When request
      """
      {
      "nome": "danna villegas montalvann",
      "email": "dannavillegas1234@test.com",
      "password": "teste12354",
      "administrador": "true"
      }
    """
    And method PUT
    Then status 200
    And match response ==
  """
  {
    'message': '#string'
    }
  """



