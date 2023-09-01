Algoritmo ObjetivosAmbientales
	
	// *** El objetivo de esta pequeña aplicación es verificar si se redujo el consumo de agua o energía de un trimestre a otro 
	//     a partir de una cierta meta ambiental, por ej.: reducir el consumo del recurso en un 10 % del primer al segundo trimestre de un año.
	
	// Definición de variables para el Objetivo Ambiental: reducir el consumo de agua
	
	Definir ConsAguaEnero, ConsAguaFebrero, ConsAguaMarzo, ConsAguaAbril, ConsAguaMayo, ConsAguaJunio, PromPrimerTrimAgua, PromSegundoTrimAgua Como Real
	Definir ObjetivoAmbientalAguaTrimestral Como Entero
	Definir Agua Como Lógico
	
	// Definición de variables para el Objetivo Ambiental: reducir el consumo de energía eléctrica
	
	Definir ConsEnergiaEnero, ConsEnergiaFebrero, ConsEnergiaMarzo, ConsEnergiaAbril, ConsEnergiaMayo, ConsEnergiaJunio, PromPrimerTrimEnergia, PromSegundoTrimEnergia Como Real
	Definir ObjetivoAmbientalEnergiaTrimestral Como Entero
	Definir Energia Como Lógico
	
	// Selección del Objetivo Ambiental que se desea verificar
	
	Repetir
		Escribir '¿Cuál es el Objetivo Ambiental que desea verificar que se cumpla?'
		Escribir '1. Reducir el consumo de agua'
		Escribir '2. Reducir el consumo de energía'
		Escribir '3. Salir'
		Leer menuPrincipal
		
		Si menuPrincipal=1 Entonces
			
			// Pedido de datos al usuario sobre los consumos de agua
			
			Escribir 'Proporcione los datos de consumo mensual de agua en metros cúbicos por tonelada de producto vendido para el período de enero a junio (un total de 6 datos)'
			Leer ConsAguaEnero, ConsAguaFebrero, ConsAguaMarzo, ConsAguaAbril, ConsAguaMayo, ConsAguaJunio
			
			Escribir 'Ingrese el porcentaje trimestral de reducción del consumo de agua que ha establecido como su meta ambiental'
			Leer ObjetivoAmbientalAguaTrimestral
			
			// Cálculo del promedio de consumo de agua en cada trimestre
			
			PromPrimerTrimAgua <- (ConsAguaEnero+ConsAguaFebrero+ConsAguaMarzo)/3
			PromSegundoTrimAgua <- (ConsAguaAbril+ConsAguaMayo+ConsAguaJunio)/3
			
			Si PromSegundoTrimAgua<=(1-ObjetivoAmbientalAguaTrimestral/100)*PromPrimerTrimAgua Entonces
				Agua <- Verdadero
				Escribir 'Cumplió su objetivo ambiental de reducir el consumo de agua en el segundo trimestre'
			SiNo
				Agua <- Falso
				Escribir 'N0 cumplió su objetivo ambiental de reducir el consumo de agua en el segundo trimestre'
			FinSi
		FinSi
		
		Si menuPrincipal=2 Entonces
			
			// Pedido de datos al usuario sobre los consumos de energía
			
			Escribir 'Proporcione los datos de consumo mensual de energía eléctrica en kW/h por tonelada de producto vendido para el período de enero a junio (un total de 6 datos)'
			Leer ConsEnergiaEnero, ConsEnergiaFebrero, ConsEnergiaMarzo, ConsEnergiaAbril, ConsEnergiaMayo, ConsEnergiaJunio
			
			Escribir 'Ingrese el porcentaje trimestral de reducción del consumo de energía eléctrica que ha establecido como su meta ambiental'
			Leer ObjetivoAmbientalEnergiaTrimestral
			
			// Cálculo del promedio de consumo de energía en cada trimestre
			
			PromPrimerTrimEnergia <- (ConsEnergiaEnero+ConsEnergiaFebrero+ConsEnergiaMarzo)/3
			PromSegundoTrimEnergia <- (ConsEnergiaAbril+ConsEnergiaMayo+ConsEnergiaJunio)/3
			
			Si PromSegundoTrimEnergia<=(1-ObjetivoAmbientalEnergiaTrimestral/100)*PromPrimerTrimEnergia Entonces
				Energia <- Verdadero
				Escribir 'Cumplió su objetivo ambiental de reducir el consumo de energía en el segundo trimestre'
			SiNo
				Energia <- Falso
				Escribir 'N0 cumplió su objetivo ambiental de reducir el consumo de energía en el segundo trimestre'
			FinSi
		FinSi
		
		Si menuPrincipal >=4 Entonces
			Escribir 'Opción incorrecta, ingrese 1, 2 o 3'
		FinSi
		
		Si Agua Y Energia = Verdadero Entonces
			Escribir 'FELICITACIONES!! Cumplió ambos objetivos ambientales en el segundo trimestre, lo que demuestra su compromiso con el cuidado del medio ambiente y la mejora continua de su desempeño ambiental'
		FinSi
	Hasta Que menuPrincipal=3
FinAlgoritmo
