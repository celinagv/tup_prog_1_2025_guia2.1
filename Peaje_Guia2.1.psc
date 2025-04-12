Proceso Peaje
	Definir categoria, tarjeta Como entero;
	Definir tarifa,transP,hora, cantKg Como Real;
	
	Escribir 'Ingrese el numero de la categoria al cual corresponde el vehiculo:';
	Escribir '1- hasta dos ejes y rueda simple , 2- tres y cuatro ejes y rueda simple, 3- dos ejes, camiones y omnibus, 4- tres ejes, camiones y omnibus';
	Leer categoria;
	
	Si categoria = 3 O categoria = 4 Entonces
		Escribir '¿Es un transporte publico de pasajeros? - 1 - Si / 0 - NO ';
		leer transP;
		Escribir 'Indique en kilogramos la cantidad de carga transportada';
		Leer cantKg;
		Si categoria = 3 Entonces
			tarifa = 300+cantkg*0.07;
		SiNo
			tarifa = 400+cantkg*0.07;
		FinSi
		
	Sino 
		Si categoria = 1 Entonces
			tarifa = 90;
			
		SiNo
			tarifa =160;
		FinSi
	FinSi
	
	Escribir 'Ingrese el horario de circulación: HH.MM';
	Leer hora;
	
	Si hora >= 1.00 Y hora <= 6.30 Entonces
		Si categoria = 1 Entonces
			tarifa= 90 - (90*0.05);
		FinSi
		Si categoria = 2 Entonces
			tarifa= 160- (160*0.05);
		FinSi
		Si categoria = 3 O categoria = 4 Entonces
			Si transP = 1 Y hora <= 6 Entonces
				tarifa = tarifa -(tarifa*0.25);
			SiNO 
				tarifa = tarifa +(tarifa*0.10);
			FinSi
		FinSi
	FinSi
	
	Si hora>=13 Y hora<=19 Entonces
		tarifa = tarifa -(tarifa*0.15);
	FinSi
	
	Si (hora>=20 Y hora < 22) O ( hora>0 Y hora<1) Entonces
		Si transP = 1 Entonces
			tarifa = tarifa -(tarifa*0.25);
		FinSi
	FinSI
	
	Si hora>=22 Y hora<=0 Entonces
		si categoria = 1 O categoria =2 Entonces
			tarifa = tarifa + (tarifa*0.10);
		SiNo
			Si transP = 1 Entonces
				tarifa = tarifa -(tarifa*0.25);
			SiNO 
				tarifa = tarifa -(tarifa*0.10);
			FinSi
		FinSi
	FinSi
	
	Escribir '¿Posee tarjeta de pase? - 1 - Si / 0 - NO ';
	Leer tarjeta;
	
	Si tarjeta = 1 Entonces
		tarifa = tarifa - (tarifa*0.015);
		Escribir 'El costo de la tarifa es $(ar)------------------', tarifa;
	SiNo
		Escribir 'El costo de la tarifa es $(ar)------------------', tarifa;
	FinSi
	
FinProceso
