Algoritmo EmpresaAguaBidones
	Definir totalLitros, cantM20b, i, cantb5, cantb20, paradas, b5, b20 Como Entero;
	Definir pb5, pb20, recCamion, promLitros Como Real;
	Definir nCamion, nCamionM20 Como Cadena;
	
	totalLitros <- 0;
	
	Escribir "Ingrese el precio del bidón de 5 litros:";
	Leer pb5;
	Escribir "Ingrese el precio del bidón de 20 litros:";
	Leer pb20;
	
	Para i<-1 Hasta 5 Hacer
		Escribir "Ingrese el número del camión:";
		Leer nCamion;
		cantb5 <- 0;
		cantb20 <- 0;
		paradas <- 0;
		recCamion <- 0;
		Escribir "Ingrese cantidad de bidones de 5 litros y 20 litros o (-1 y -1 p Salir):";
		Leer b5,b20;
		Mientras b5 <> -1 O b20 <> -1 Hacer
			paradas <- paradas + 1;
			cantb5 <- cantb5 + b5;
			cantb20 <- cantb20 + b20;
			Escribir "Ingrese cantidad de bidones de 5 litros y 20 litros o (-1 y -1 p Salir):";
			Leer b5,b20;
		FinMientras
		recCamion <- cantb5 * pb5 + cantb20 * pb20;
		
		Si i == 1 Entonces
			cantM20b <- cantb20;
			nCamionM20 <- nCamion;
		FinSi
		Si cantb20 < cantM20b Entonces
			cantM20b <- cantb20;
			nCamionM20 <- nCamion;
		FinSi
		totalLitros <- totalLitros + (cantb5*5 + cantb20*20);
		Escribir "La recaudación del camión es:", recCamion;
		Escribir "Cantidad de bidones de 5 litros:", cantb5;
		Escribir "Cantidad de bidones de 20 litros:", cantb20;
	FinPara
	promLitros <- totalLitros / 5;
	Escribir "Promedio de litros descargados:",promLitros;
	Escribir "Patente del Camión con menor bidones de 20 litros:",nCamionM20;
	Escribir "Cantidad de bidones de 20 litros del Camión que menos cargó:",cantM20b;
	
	
	
	
FinAlgoritmo
