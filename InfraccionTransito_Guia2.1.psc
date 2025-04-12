Algoritmo InfraccionTransito
	Definir dni, eje  Como Entero;
	Definir cl, totalM, descE,sinl, faltaM, sobreV, faltaC, faltaR, infraccion, tipoV Como Real;
	Definir patente, nombre, apellido Como Caracter;
	
	Escribir 'Ingrese los datos del conductor: dni,apellido, nombre: ';
	Leer dni, apellido,nombre;
	Escribir 'Ingrese los datos del vehiculo: patente, tipo (cant de ejes), base monetaria (costo por litro)';
	Leer patente, eje, cl;
	
	Escribir 'Indique con el tipo de infraccion cometida, en las no cometidas ingrese 0';
	Escribir '1 Sin luces bajas,2 Falta de Matafuego, 3 Sobrevelocidad, 4 Falta de cinturón de seguridad o falta de casco, 5 Falta de respeto A la autoridad';
	Leer sinl, faltaM, sobreV, faltaC, faltaR;
	Escribir '¿Paga en el lugar la multa? 1-Si , 0-No';
	Leer descE;
	
	
	Escribir dni,'  ', nombre,'  ' patente; 
	Escribir 'El tipo de vehiculo es de ', eje , ' ejes - Base monetaria : 1litro / ', cl ,' $arg';
	Escribir 'Detalle:';
	
	Si sinL <> 0 Entonces
		sinL= 25*cl;
		Escribir 'Sin luces: (25L) --------------------------------', sinL;
	FinSi
	
	Si faltaM  <> 0 Entonces
		faltaM = 30*cl;
		Escribir 'Falta de Matafuego: (30L) --------------------------------', faltaM;
	FinSi
	Si sobreV  <> 0 Entonces
		sobreV = 100*cl;
		Escribir 'Sobrevelocidad: (100L) --------------------------------', sobreV;
	FinSi
	Si faltaC  <> 0 Entonces
		faltaC = 85*cl;
		Si eje <> 1 Entonces
			Escribir 'Falta de cinturon de seguridad: (85L) --------------------------------', faltaC;
		SiNo
			Escribir 'Falta casco: (85L) --------------------------------------', faltaC;
		FinSi
		
	FinSi
	Si faltaR  <> 0 Entonces
		faltaR = 1500*cl;
		Escribir 'Falta de respeto A la autoridad: (1500L) --------------------------------', faltaR;
	FinSi
	
	
	infraccion = (sinL+ faltaM+sobreV+faltaC+faltaR);
	
	Escribir 'subtotal     $ar ----------------------------------', infraccion;
	
	
	Segun eje Hacer
		1: totalM= infraccion;
			Escribir 'Por tipo de vehículo:(1%) sin recargo';
			
		2: tipoV= infraccion/2;
			totalM=(infraccion+tipoV);
			Escribir 'Por tipo de vehículo:(50%) ----------------------------------- (+)', tipoV;
			Escribir 'subtotal     $ar ----------------------------------', totalM;
		De Otro Modo:
			tipoV= infraccion*2;
			totalM=(infraccion+tipoV);
			Escribir 'Por tipo de vehículo:(200%) ----------------------------------- (+)', tipoV;
			Escribir 'subtotal     $ar ----------------------------------', totalM;
	FinSegun
	
	
	Si descE == 1 Entonces
		descE = totalM/2;
		Escribir 'Pago en efectivo (-50%) ----------------------------------  (-)',descE;
		Escribir 'Total de la multa  $ar  -----------------------------------', descE;
	SiNo
		Escribir 'El Pago no se realiza en efectivo -------------------------';
		Escribir 'Total de la multa  $ar  ----------------------------------', totalM;
	FinSi
FinAlgoritmo