Feature:
    Como ninio
    Quiero saber la posicion inicial del auto luego de ejecutar los comandos
    Para poder validar que termino en la posicion correcta
Scenario:
    Given visito la pagina de comandos
    When ingreso la posicion inicial del auto "2,2"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2"
    And deberia mostrar los comandos ingresados "Comandos: 2,2"
    And deberia mostrar la posicion final del auto "Posicion Final: 2,2"