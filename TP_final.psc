Algoritmo ObjetivosAmbientales
	
	// *** El objetivo de esta peque�a aplicaci�n es verificar si se redujo el consumo de agua o energ�a de un trimestre a otro 
	//     a partir de una cierta meta ambiental, por ej.: reducir el consumo del recurso en un 10 % del primer al segundo trimestre de un a�o.
	
	// Definici�n de variables para el Objetivo Ambiental: reducir el consumo de agua
	
	Definir ConsAguaEnero, ConsAguaFebrero, ConsAguaMarzo, ConsAguaAbril, ConsAguaMayo, ConsAguaJunio, PromPrimerTrimAgua, PromSegundoTrimAgua Como Real
	Definir ObjetivoAmbientalAguaTrimestral Como Entero
	Definir Agua Como L�gico
	
	// Definici�n de variables para el Objetivo Ambiental: reducir el consumo de energ�a el�ctrica
	
	Definir ConsEnergiaEnero, ConsEnergiaFebrero, ConsEnergiaMarzo, ConsEnergiaAbril, ConsEnergiaMayo, ConsEnergiaJunio, PromPrimerTrimEnergia, PromSegundoTrimEnergia Como Real
	Definir ObjetivoAmbientalEnergiaTrimestral Como Entero
	Definir Energia Como L�gico
	
	// Selecci�n del Objetivo Ambiental que se desea verificar
	
	Repetir
		Escribir '�Cu�l es el Objetivo Ambiental que desea verificar que se cumpla?'
		Escribir '1. Reducir el consumo de agua'
		Escribir '2. Reducir el consumo de energ�a'
		Escribir '3. Salir'
		Leer menuPrincipal
		
		Si menuPrincipal=1 Entonces
			
			// Pedido de datos al usuario sobre los consumos de agua
			
			Escribir 'Proporcione los datos de consumo mensual de agua en metros c�bicos por tonelada de producto vendido para el per�odo de enero a junio (un total de 6 datos)'
			Leer ConsAguaEnero, ConsAguaFebrero, ConsAguaMarzo, ConsAguaAbril, ConsAguaMayo, ConsAguaJunio
			
			Escribir 'Ingrese el porcentaje trimestral de reducci�n del consumo de agua que ha establecido como su meta ambiental'
			Leer ObjetivoAmbientalAguaTrimestral
			
			// C�lculo del promedio de consumo de agua en cada trimestre
			
			PromPrimerTrimAgua <- (ConsAguaEnero+ConsAguaFebrero+ConsAguaMarzo)/3
			PromSegundoTrimAgua <- (ConsAguaAbril+ConsAguaMayo+ConsAguaJunio)/3
			
			Si PromSegundoTrimAgua<=(1-ObjetivoAmbientalAguaTrimestral/100)*PromPrimerTrimAgua Entonces
				Agua <- Verdadero
				Escribir 'Cumpli� su objetivo ambiental de reducir el consumo de agua en el segundo trimestre'
			SiNo
				Agua <- Falso
				Escribir 'N0 cumpli� su objetivo ambiental de reducir el consumo de agua en el segundo trimestre'
			FinSi
		FinSi
		
		Si menuPrincipal=2 Entonces
			
			// Pedido de datos al usuario sobre los consumos de energ�a
			
			Escribir 'Proporcione los datos de consumo mensual de energ�a el�ctrica en kW/h por tonelada de producto vendido para el per�odo de enero a junio (un total de 6 datos)'
			Leer ConsEnergiaEnero, ConsEnergiaFebrero, ConsEnergiaMarzo, ConsEnergiaAbril, ConsEnergiaMayo, ConsEnergiaJunio
			
			Escribir 'Ingrese el porcentaje trimestral de reducci�n del consumo de energ�a el�ctrica que ha establecido como su meta ambiental'
			Leer ObjetivoAmbientalEnergiaTrimestral
			
			// C�lculo del promedio de consumo de energ�a en cada trimestre
			
			PromPrimerTrimEnergia <- (ConsEnergiaEnero+ConsEnergiaFebrero+ConsEnergiaMarzo)/3
			PromSegundoTrimEnergia <- (ConsEnergiaAbril+ConsEnergiaMayo+ConsEnergiaJunio)/3
			
			Si PromSegundoTrimEnergia<=(1-ObjetivoAmbientalEnergiaTrimestral/100)*PromPrimerTrimEnergia Entonces
				Energia <- Verdadero
				Escribir 'Cumpli� su objetivo ambiental de reducir el consumo de energ�a en el segundo trimestre'
			SiNo
				Energia <- Falso
				Escribir 'N0 cumpli� su objetivo ambiental de reducir el consumo de energ�a en el segundo trimestre'
			FinSi
		FinSi
		
		Si menuPrincipal >=4 Entonces
			Escribir 'Opci�n incorrecta, ingrese 1, 2 o 3'
		FinSi
		
		Si Agua Y Energia = Verdadero Entonces
			Escribir 'FELICITACIONES!! Cumpli� ambos objetivos ambientales en el segundo trimestre, lo que demuestra su compromiso con el cuidado del medio ambiente y la mejora continua de su desempe�o ambiental'
		FinSi
	Hasta Que menuPrincipal=3
FinAlgoritmo
