Feature:
    COMO: ninio
    QUIERO: ver el tamanio de la pista, la posición inicial, comandos, posición final de los autos
    PARA: saber donde se encuentran los autos en la pista


Scenario:
    Given visito la pagina inicio e ingreso los datos de los 2 autos "5,5-2,2 N-IAIAIADA-2,3 N-IAA-O 3,2-O 1,2-O 3,3"
    When comienzo el juego presionando en boton "ejecutar"
    Then muestra el tamanio de la pista "Superficie de Terreno: 5,5"
    And muestra datos del auto "Auto 1:"
    And muestra el inicio "2,2 N"
    And muestra los comandos "IAIAIADA"
    And muestra la pos final "4,1 S"
    And datos del auto 2 "Auto 2:"
    And inicio del auto 2 "2,3 N"
    And comandos del auto 2 "IAA"
    And la pos final del auto 2 "2,1 O"