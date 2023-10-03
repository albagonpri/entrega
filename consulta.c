
#include <stdio.h>
	
	struct Jugador {
	char nombre[50];
	int partidasGanadas;
};

int main() {
	int numJugadores;
	printf("Ingrese el número de jugadores: ");
	scanf("%d", &numJugadores);
	
	struct Jugador jugadores[numJugadores];
	
	for (int i = 0; i < numJugadores; i++) {
		printf("Ingrese el nombre del jugador %d: ", i + 1);
		scanf("%s", jugadores[i].nombre);
		printf("Ingrese el número de partidas ganadas por %s: ", jugadores[i].nombre);
		scanf("%d", &jugadores[i].partidasGanadas);
	}
	
	int contador = 0;
	for (int i = 0; i < numJugadores; i++) {
		if (jugadores[i].partidasGanadas > 3) {
			contador++;
		}
	}
	
	printf("Jugadores que ganaron más de tres partidas: %d\n", contador);
	
	return 0;
}
