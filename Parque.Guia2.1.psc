Proceso Parque
	Definir personas, edad, menores, mayores Como Entero;
	Definir total Como Real;
	mayores<-0;
	menores<- 0;
	total <- 0;
	Escribir 'Ingresa la cantidad de personas a ingresar al parque';
	Leer personas;
	
	Si personas>0 Y personas<=3 Entonces
		Para i <- 1 Hasta personas Hacer
			Escribir 'Ingrese la edad ';
			Leer edad;
			Si edad<16 Entonces
				Escribir 'No puede ingresar un menor sin pasaporte familiar';
				i<- i-1;
			SiNo
				total <- total + 1500;
			FinSi
		FinPara
		Escribir 'El total es:---------------', total;
	FinSi
	
	Si (personas>=4) Y (personas<=10) Entonces
		Para i<-1 Hasta personas Hacer
			Escribir 'Ingrese la edad ';
			Leer edad;
			Si edad>=0 Y edad<=3 Entonces
				menores<- menores + 1;
				total<- total+150;
			FinSi
			
			Si edad>=4 Y edad<=10 Entonces
				menores<- menores + 1;
				total <- total + 637.5;
			FinSi
			
			Si edad>=11 Y edad<=15 Entonces
				menores<- menores + 1;
				total <- total + 1020;
			FinSi
			
			Si edad>=16 Entonces
				total <- total + 1275;
			FinSi
			
			Si edad>= 21 Entonces
				mayores<- mayores+1;
			FinSi
			
		FinPara
		Si (mayores>=1 Y menores<=5) O (mayores>=2 Y menores<=8) O (mayores=0 Y menores=0)Entonces
			EScribir 'El total es:---------------', total;
		SiNo
			Escribir 'Por cada 5 menores debe haber 1 adulto responsable';
		FinSi
	FinSi
	
	
FinProceso
