Feature: "Partido de Generala"

Scenario: inicio
	Given Arranco la partida
	Then Tengo que ver "Partido Generala"

Scenario: lanzaDado
	Given Arranco la partida
	When Dado1 sale 5
	And Dado2 sale 4
	And I press "Tirar dado"
	Then Tengo que ver "Gano Dado1"
