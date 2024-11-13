
// PROYECTO: CALCULADORA DE MATRICES Y DETERMINANTES CON GRAFICADOR DE FUNCIONES
// MATERIA: LABORATORIO -- COMISION:1.603
//INTEGRANTES: Fernanda Lobo Serra, Gustavo Fossati

Funcion sumar_matrices
	Definir N, M Como Entero
	Definir i, j Como Entero
	Definir X Como Real
	
	Escribir "--------------------SUMA DE MATRICES--------------------"
	Escribir ""
	Escribir "Ingrese el nº de filas y columnas de las matrices (NxM):"
	Escribir " [N]: "
	N = ComprobarDimension(X)
	Escribir " [M]: "
	M = ComprobarDimension(X)
	Escribir ""
	Definir A, B, S como Real
	Dimension A[N,M]
	Dimension B[N,M]
	Dimension S[N,M]
	Para i = 1 hasta N Hacer			// Carga de datos de la Matriz A
		Para j = 1 Hasta M Hacer
			Escribir "Ingresar el elemento: A[", i, ",", j, "]"
			Leer A[i,j]
		FinPara
	FinPara
	Para i = 1 hasta N Hacer			// Carga de datos de la Matriz B
		Para j = 1 Hasta M Hacer
			Escribir "Ingresar el elemento: B[", i, ",", j, "]"
			Leer B[i,j]
		FinPara
	FinPara
	Escribir ""
	Escribir "--------------------------------------"
	Escribir ""
	Escribir " Resultado: Matriz S = A + B "
	Escribir ""
	Para i = 1 hasta N Hacer
		Para j = 1 Hasta M Hacer
			S[i,j] = A[i,j] + B[i,j]
			Escribir "			         	",S[i,j] Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "--------------------------------------"
	Escribir ""
	Escribir "Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
FinFuncion

Funcion multiplicar_matrices
	Definir N, R, M Como Entero
	Definir i, j, k Como Entero
	Definir sum, X como Real
	sum = 0

	Escribir "------------------ MULTIPLICACIÓN DE MATRICES ------------------"
	Escribir ""
	Escribir " Ingrese el nº de filas y columnas de la matriz A (NxR):"
	Escribir " [N]: "
	N = ComprobarDimension(X)
	Escribir ""
	Escribir " [R]: "
	R = ComprobarDimension(X)
	Escribir ""
	Escribir " SE ASUME QUE EL NUMERO DE FILAS DE LA MATRIZ B ES IGUAL Al NUMERO DE COLUMNAS R DE LA MATRIZ A, PARA QUE EXISTA EL PRODUCTO DE MATRICES"
	Escribir " Ingrese el nº de columnas de la matriz B (RxM): "
	Escribir " [M]: "
	M = ComprobarDimension(X)
	Escribir ""
	Definir A, B, P como Real
	Dimension A[N,R]
	Dimension B[R,M]
	
	Dimension P[N,M]
	Para i = 1 hasta N Hacer
		Para j = 1 Hasta R Hacer
			Escribir "Ingresar el elemento: A[", i, ",", j, "]"
			Leer A[i,j]
		FinPara
	FinPara
	Para i = 1 hasta R Hacer
		Para j = 1 Hasta M Hacer
			Escribir "Ingresar el elemento: B[", i, ",", j, "]"
			Leer B[i,j]
		FinPara
	FinPara
	Escribir ""
	Escribir "--------------------------------------"
	Escribir ""
	Escribir "  Resultado: Matriz P = A x B "
	Escribir ""
		Para i = 1 hasta N Hacer
			Para j = 1 Hasta M Hacer
				sum = 0
				Para k = 1 Hasta R Hacer
					sum = sum + A[i,k] * B[k,j]
				FinPara
				P[i,j] = sum
				
				Escribir "			    ",P[i,j] Sin Saltar
			FinPara
			Escribir ""
		FinPara
		Escribir ""
		Escribir "--------------------------------------"
		Escribir ""
		Escribir "Presione cualquier tecla para continuar"
		Esperar tecla
		Borrar Pantalla
FinFuncion

Funcion trasponer_matrices  
	Definir N, i, j Como Entero
	Definir X Como Real
	
	Escribir "------------------- TRASPONER MATRICES -------------------"	
	Escribir ""
	Escribir "Ingrese el nº de filas y columnas de la matriz  N = " Sin Saltar
	N = ComprobarDimension(X)
	Escribir ""
	Definir A Como Real
	Dimension A[N,N]
	Definir AUX Como Real
	Dimension AUX[N,N]
	
	//Inicializo A
	Escribir""
	Para i = 1 Hasta N Hacer
		Para j =1 Hasta N Hacer
			Escribir "Ingrese el elemento A[",i,j,"]: " Sin Saltar
			Leer A[i,j]
		FinPara
	FinPara
	Escribir""
	Escribir "Matriz originalmente ingresada:"
	Escribir""
	Para i = 1 Hasta N Hacer
		Para j =1 Hasta N Hacer
			Escribir "               ", A[i,j] Sin Saltar
		FinPara
		Escribir""
	FinPara
	
	Escribir ""
	Para i = 1 hasta N Hacer
		Para j = 1 Hasta N Hacer
			AUX[i,j] = A[j,i]
		FinPara
	FinPara
	
	Escribir "La Matriz Traspuesta resulta:"
	Escribir ""
	Para i = 1 Hasta N Hacer
		Para j =1 Hasta N Hacer
			Escribir "                ", AUX[i,j] Sin Saltar
		FinPara
		Escribir""
	FinPara
	Escribir""
	Escribir ""
	Escribir "Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
FinFuncion

Funcion calculo_determinante
	Definir i, j, n Como Entero
	Definir matriz , det, X Como Real
	
	Escribir "--------------------- CALCULAR DETERMINANTE ---------------------"
	Escribir "Ingrese el orden (n) de la matriz para calcular su determinante "
	n = ComprobarDimension(X)
	Escribir ""
	Dimension matriz[n,n]
	Escribir ""
	//Ingresar matriz
	Escribir "Carga de datos:"
	Escribir ""
	Para i = 1 Hasta n Hacer
		Para j = 1 Hasta n Hacer
			Escribir "matriz[",i, j,"]"," = " Sin Saltar
			Leer matriz[i,j]  
		FinPara
	FinPara
	Escribir ""
	Escribir "  Matriz: "
	Escribir ""
	
	Para i = 1 Hasta n Hacer
		Para j = 1 Hasta n Hacer
			Escribir "          ", "a[",i, j,"]"," = ",  matriz[i,j]  Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Si n > 2 Entonces
		Escribir "Desarrollo por fila 1 (Regla de Laplace): " 
	FinSi
	det = determinante(matriz,n)
	Escribir ""
	Escribir"*******************************************************************"
	Escribir ""
	Escribir "  Resultado : Determinante de la matriz = ", det
	Escribir ""
	Escribir"*******************************************************************"
	Escribir ""
	Escribir ""
	Escribir "Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
FinFuncion

Funcion det = determinante(matriz,n)
	Definir det Como Real
	Definir k, i, j, q Como Entero
	
	Si n = 1 Entonces
		det = matriz[1,1]
	FinSi
	
	Si n = 2 Entonces
		det = matriz[1,1] * matriz[2,2] - matriz[1,2] * matriz[2,1]
	FinSi
	
	Si n > 2 Entonces
		det = 0
		Definir smatriz Como Real
		Dimension smatriz[n-1,n-1]
		
		Escribir ""
		Para k = 1 Hasta n Hacer						// Recorrido de columnas mediante el índice k  dese 1 hasta n
			Escribir "Menor del elemento [1,",k,"] :", " Submatriz de orden:  ", n-1		// Armado de una nueva submatriz eliminando la fila 1 y la columna k
			Para i = 2 Hasta n Hacer  				// Recorrido de filas desde la 2 hasta n
				
				q = 1									// Nuevo índice de columnas para la nueva submatriz.
				Para j = 1 Hasta n Hacer				// Recorrido de columnas originales
					Si j <> k Entonces					// Se ingresa a menos que sean iguales. Sí son iguales se omite la columna , continuando  el ciclo de j hasta n.
						smatriz[i-1, q] = matriz[i,j] 	// Armado de la submatriz, retitulando índices a partir de los originales.
						q = q + 1						// Columna siguiente de la submatriz.
					FinSi
				FinPara
			FinPara
			// Impresión de Submatriz de orden: n-1
			Escribir ""
			Para i = 1 Hasta n-1 Hacer				//Retoma índices convencionales
				Para j = 1 Hasta n-1 Hacer
					Escribir "        ", "s[",i, j,"]"," = ",  smatriz[i,j]  Sin Saltar		// s[i,j] elementos de la submatriz n-1
					
				FinPara
				Escribir ""
			FinPara
			Escribir ""
			det = det + matriz[1, k] * (-1)^(k+1) * Determinante(smatriz, n-1)   // LLamada Recursiva a la función Determinante() 
			// con argumento = submatriz de orden n-1.
		FinPara
	FinSi
FinFuncion

//Funcion que comprueba que ninguna dimension de las matrices sea 0, menor o que contenga decimales.
Funcion num = ComprobarDimension(prueba por referencia)
	Definir decimal Como Real
	Definir flag como entero
	Repetir 
		Leer prueba
		flag = 1
		decimal = prueba - trunc(prueba)
		Si decimal > 0 Entonces
			Escribir "Ingrese un número Entero, sin decimales"
			flag = 0
		SiNo
			Si prueba <= 0 Entonces
				Escribir "Valor no puede ser 0 o menor, ingrese nuevamente."
				flag = 0
			FinSi
		FinSi
	Hasta Que flag <> 0
	num = prueba
FinFuncion

Funcion graficar
	Definir opcion Como real
	Repetir
		Escribir ""
		Escribir ""
		Escribir " ********************************************************** GRAFICADORA DE FUNCIONES ********************************************************* "	
		Escribir ""
		Escribir ""
		Escribir "                                                             [1]  Senoidal"
		Escribir ""
		Escribir "                                                             [2]  Lineal"
		Escribir ""
		Escribir "                                                             [3]  Cuadrática"
		Escribir ""
		Escribir "                                                             [4]  Exponencial"
		Escribir ""
		Escribir "                                                             [0]  Para retornar a Menú Principal"
		Escribir ""
		Escribir ""
		Escribir " ********************************************************************************************************************************************* "
		Escribir ""
		Escribir "         Ingrese el tipo de función: " Sin Saltar
		Leer opcion
		Borrar pantalla
		Segun opcion Hacer
			opcion 1:
				graficar_seno
			opcion 2:
				GraficarFuncionLineal	
			opcion 3:
				GraficarFuncionCuadratica
			opcion 4:
				GraficarFuncionExponencial
		FinSegun
	Mientras Que ( opcion >=1 | opcion <0 )
FinFuncion

Funcion GraficarFuncionLineal
    Definir m, b, x,X0, fx , FE Como Real
    Definir i, j Como Entero
	Definir grafica Como Caracter
	Definir AX, AY Como Entero
	AX = 120
	AY = AX/3
    Dimension grafica[AY+1, AX+1]  
	
    // Pedir al usuario la pendiente (m) y la intersección (b)
	Escribir " ---------------------- FUNCIÓN LINEAL ----------------------"
	Escribir " "
	Escribir "Expresión General: F(x) = mx + b "
	Escribir " "
    Escribir "Introduzca el valor de la pendiente (m): "
    Leer m
    Escribir "Introduzca el valor de la intersección con el eje Y (b): "
    Leer b
	m = m/3
	b = b/3
	Escribir " "
    // Inicializar la matriz con puntos
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            grafica[i, j] <- "."
        FinPara
    FinPara
	
    // Llenar los ejes X y Y
    Para i <- 1 Hasta AY+1 Hacer
        grafica[i, ((AX/2)+1)] <- "|" // Eje Y en j = 61
    FinPara
	
    Para j <- 1 Hasta AX+1 Hacer
        grafica[(AY/2)+1, j] <- "_" // Eje X en i = 21
    FinPara
	
	Para j <- 1 Hasta AX+1 Hacer
      
        fx<- m*(j-(AX/2+1)) + b // Calcular Y en base a la ecuación lineal
		//i <- Redon(-fx + AY/2+2 ) // Escalar y centrar el valor de Y
        i<- Redon(-fx+AY/2+1)
		
        Si i >= 1 y i <= AY Entonces
            grafica[i, j] <- "*"
        FinSi
    FinPara
	
    // Imprimir la matriz
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            Escribir Sin Saltar grafica[i, j]
        FinPara
        Escribir ""
    FinPara

	Escribir " "
	Escribir "     Intersecciones con los ejes: "
	Si m = 0 y b = 0 entonces 
		Escribir "                                  Ix : La funcion f(x) = 0 se ubica en el eje X. Todos sus puntos intersecan con este eje."
		Escribir "                                  Iy : ( 0 ; 0 )"
	SiNo
		Si m = 0 Entonces
			Escribir "                                  La pendiente es 0, la función es una constante por lo que no tiene intersección con el eje X"
			Escribir "                                  Iy = ( 0 ; ", b*3," )"
		Sino 
			X0 = -Trunc(b*100/m)/100
			Escribir "                                  Ix = ( ", X0, " ; 0 )"
			Escribir "                                  Iy = ( 0 ; ", b*3," )"
		FinSi
	FinSi
	Escribir " "
	Escribir " "
	Escribir "Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
FinFuncion

Funcion GraficarFuncionCuadratica
    Definir a, b, c, x, fx , R,R1, X1,X2, Xv,Yv Como Real
    Definir i, j , Factor_escala Como Entero
	Definir grafica Como Caracter
	Definir AX, AY Como Entero
	AX = 120
	AY = AX/3
	Factor_escala = 10
    Dimension grafica[AY+1, AX+1]  
	Escribir " -------------------- FUNCIÓN CUADRÁTICA --------------------"
    // Pedir al usuario los coeficientes de la ecuación cuadrática
	Escribir "Expresión General: F(x) = ax^2 + bx + c "
	Escribir " "
	Repetir
		Escribir "Introduce el valor de a: "
		Leer a
		Si a = 0 Entonces
			Escribir "El valor de a no puede ser cero, intente nuevamente."
		FinSi
	Mientras Que a = 0
    
    Escribir "Introduce el valor de b: "
    Leer b
    Escribir "Introduce el valor de c: "
    Leer c
	
	a = a/Factor_escala
	b = b/Factor_escala
	c = c/Factor_escala
	
    // Inicializar la matriz con espacios
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            grafica[i, j] <- "."
        FinPara
    FinPara
	
    // Llenar los ejes X y Y
    Para i <- 1 Hasta AY+1 Hacer
        grafica[i, AX/2+1] <- "|" // Eje Y
    FinPara
	
    Para j <- 1 Hasta AX+1 Hacer
        grafica[AY/2+1, j] <- "-" // Eje X
    FinPara
	
    // Llenar la función cuadrática Y = aX^2 + bX + c
    Para j <- 1 Hasta AX+1 Hacer
        x = (j - (AX/2+1)) // Ajustar el valor de X al rango [-20, 20]
        fx = a * x * x + b * x + c // Calcular Y en base a la ecuación cuadrática
        i = Redon (-fx + AY/2+1)// Escalar y centrar el valor de Y
		
        Si i >= 1 y i <= AY Entonces
            grafica[i, j] <- "*"
        FinSi
    FinPara
	
    // Imprimir la matriz
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            Escribir Sin Saltar grafica[i, j]
        FinPara
        Escribir ""
    FinPara
	
	Escribir ""
	Si a > 0 Entonces
		Escribir "El vértice corresponde a un Mínimo Absoluto"
	SiNo
		Escribir "El vértice corresponde a un Máximo Absoluto"
	FinSi
	
	a = a * Factor_escala		// Para retornar a valores originales y dar en forma correcta las coordenadas del vertica y posteriormente las raíces X1 y X2
	b= b * Factor_escala
	c= c * Factor_escala
	Xv = -Trunc((b*100)/(2*a))/100
	Yv = c + Trunc( -((b*b)/(4*a))*100)/100 
	Escribir "Coordenadas del vertice de la parábola (Xv;Yv): " Sin Saltar
	Escribir "( ", Xv, " ; ", Yv, ") "
	
	R = b*b-4*a*c
	
	Si R<0 Entonces
		Escribir "La función cuadrática no corta el eje de abscisas, por lo tanto no cuenta con raíces reales."
		Escribir ""
		Escribir "Presione cualquier tecla para continuar"
		Esperar tecla
		Borrar Pantalla
	SiNo
		R1= Raiz(R)/(2*a)
		X1= Trunc((-b/(2*a) + R1)*100)/100
		X2= Trunc ((-b/(2*a) - R1)*100)/100
		SI ABS(X1)>AX Entonces
			Escribir "Error por fuera de rango."
		FinSi
		SI ABS(X2)>AX Entonces
			Escribir "Error por fuera de rango."
		FinSi
		Escribir "Las intersecciones con el eje x corresponden a los puntos: "
		Escribir "                                                             I1(" , X1," ; 0 )"
		Escribir "                                                             I2(" , X2," ; 0 )"
		Escribir ""
		Escribir ""
		Escribir "Presione cualquier tecla para continuar"
		Esperar tecla
		Borrar Pantalla
	FinSi
FinFuncion

Funcion graficar_seno
	Definir grafica Como Caracter
	Definir angulo, seno, escala , DEF , Amplitud Como Real
	Definir AA Como Entero
	AA = 20			// Amplitud de la función trigonométrica.
	Definir i, j,n Como Entero
	Definir AX, AY  Como Entero
	AX = 120		//(Rango-1) de eje x
	AY = 40			// (Rango-1) de eje y
	
	Escribir " ------------------------ FUNCIÓN SENO ------------------------"
	Escribir ""
	Dimension grafica[AY+1,AX+1] // Se dimensiona el tamaño de la "pantalla" o campo de graficación [y(x);x]
	Para i <- 1 Hasta AY+1 Hacer
		Para j <- 1 Hasta AX+1 Hacer
			grafica[i, j] <- "."
		FinPara
	FinPara
	
	// Llenar los ejes Y y X
	Para i <- 1 Hasta AY+1 Hacer
		grafica[i, (AX/2)+1] = "|" //  A medio recorrido del eje x se grafica el eje Y con i entre [1 - 21]
	FinPara
	
	Para j <- 1 Hasta AX+1 Hacer
		grafica[(AY/2)+1, j] <- "-" // A medio recorrido del eje y se grafica el Eje X con j entre [1-61]
	FinPara
	Repetir
		Escribir "Ingresar un valor entre [0 y 1] correspondiente al desfasaje inicial, como fracción de 2*PI radianes: "
		leer DEF
	Mientras Que DEF<0 o DEF>1
	
	Escribir "Ingrese el número de ciclos a visualizar"
	Leer n
	Escribir"Ingresar la Amplitud de la senoide como porcentaje del rango máximo de la escala [0-100]"
	leer Amplitud
	Escribir ""
	// Llenar la función seno
	angulo = -Pi
	Mientras (angulo >= -Pi Y angulo < Pi) Hacer
		seno = Sen(n*angulo+DEF*2*PI)
		i = Redon(-seno * AA*(Amplitud/100) + (AY/2) +1) // Escalar el seno y centrar en la gráfica
		j = Redon((angulo + Pi) / (2 * Pi) * AX + 1)	// La función Redon torna enteros a los índices
		grafica[i, j] = "*"
		angulo = angulo + 2*Pi/(40*n)		// A medida que se requiere visualizar mayor número de ciclos, se reduce el incremento para tomar mayor número de muestras.
	FinMientras
	
	// Imprimir la matriz
	Para i <- 1 Hasta AY+1 Hacer
		Para j <- 1 Hasta AX+1 Hacer
			Escribir Sin Saltar grafica[i, j]		// Representa una Imagen de I = Función(J). El Sin Saltar evita el tradicional salto de línea
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "                                      Amplitud como porcentaje de máxima escala: ", Amplitud, "%"
	Escribir ""
	Escribir "                                                      Cota Superior = 1"
	Escribir "                                                      Cota Inferior = -1"
	Escribir ""
	Escribir "Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
	Escribir ""
FinFuncion

Funcion GraficarFuncionExponencial
	Definir a,  x, fx, interseccion Como Real
    Definir i, j Como Entero
	Definir grafica Como Caracter
	Definir AX, AY Como Entero
	AX = 120
	AY = AX/3
    Dimension grafica[AY+1, AX+1]  
	
    // Pedir al usuario la pendiente (m) y la intersección (b)
	Escribir " ---------------------- FUNCIÓN EXPONENCIAL ----------------------"
	Escribir " "
	Escribir "Expresión General: F(x) = a^x"
	Escribir " "
    Escribir "Introduzca un valor para la base (a) entre [0.1 - 10]: "
	Repetir
		Leer a
	Mientras Que (a<0.1 O a>10)
	Escribir " "
    // Inicializar la matriz con puntos
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            grafica[i, j] <- "."
        FinPara
    FinPara
	
    // Llenar los ejes X y Y
    Para i <- 1 Hasta AY+1 Hacer
        grafica[i, ((AX/2)+1)] <- "|" // Eje Y en j = 61
    FinPara
	
    Para j <- 1 Hasta AX+1 Hacer
        grafica[(AY/2)+1, j] <- "_" // Eje X en i = 21
    FinPara
	
	Para j <- 1 Hasta AX+1 Hacer
        fx<- 5*a^((j-(AX/2+1))/10) // Calcular Y en base a la ecuación 
		//        i <- Redon(-fx + AY/2+ 1 ) // Escalar y centrar el valor de Y
        i<- Redon(-fx+AY/2+1)
		
        Si i >= 1 y i <= AY Entonces
            grafica[i, j] <- "*"
        FinSi
    FinPara
	interseccion = a^0
    // Imprimir la matriz
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            Escribir Sin Saltar grafica[i, j]
        FinPara
        Escribir ""
    FinPara
	Escribir ""
	Escribir "       Intersección con el eje Y: (0 ; 1)"
	Escribir "       Asíntota Horizontal en x = 0"
	Escribir " "
	Escribir "Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
	Escribir ""
FinFuncion
	
Algoritmo SmartMatrix2024
	Definir opcion Como real
	Escribir " ********************************************************** CALCULADORA SMART-MATRIX 2024 ****************************************************"	
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "                                                  ¡Bienvenido/a a la Calculadora SMART-MATRIX 2024!"
	Escribir ""                                                             
	Escribir ""
	Escribir ""                                                             
	Escribir "                                                             Trabajo Final de Laboratorio"
	Escribir ""
	Escribir ""
	Escribir "                                                                   Gustavo Fossati"
	Escribir "                                                                 Fernanda Lobo Serra"
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir " *********************************************************************************************************************************************"
	Escribir ""
	Escribir " Presione cualquier tecla para continuar"
	Esperar tecla
	Borrar Pantalla
	Repetir
		Escribir ""
		Escribir " ********************************************************** CALCULADORA SMART-MATRIX 2024 ****************************************************"	
		Escribir ""
		Escribir ""
		Escribir "                                                             [1]  Sumar Matrices"
		Escribir ""
		Escribir "                                                             [2]  Multiplicar Matrices"
		Escribir ""
		Escribir "                                                             [3]  Trasponer Matrices cuadradas"
		Escribir ""
		Escribir "                                                             [4]  Determinante de una Matriz NxN"
		Escribir ""
		Escribir "                                                             [5]  Calculadora Gráfica"
		Escribir ""
		Escribir "                                                             [0]  Finalizar"
		Escribir ""
		Escribir ""
		Escribir " *********************************************************************************************************************************************"
		Escribir ""
		Escribir "         Seleccione la opción deseada: " Sin Saltar
		Leer opcion
		Borrar Pantalla
		Si opcion <> 0 Entonces
			Segun opcion Hacer
				opcion 1:
					sumar_matrices
				opcion 2:
					multiplicar_matrices
				opcion 3:
					trasponer_matrices
				opcion 4: 
					calculo_determinante
				opcion 5:
					graficar
				De Otro Modo:
					Borrar Pantalla
					Escribir " X Opcion ingresada incorrecta, vuelva a ingresar la opcion deseada X"
					Esperar 500 Milisegundos
			FinSegun
		FinSi
	Mientras Que opcion <> 0
	Borrar Pantalla
	Escribir ""
	Escribir " *********************************************************************************************************************************************"
	Escribir ""
	Escribir ""
	Escribir "                                                    Gracias por utilizar SMART-MATRIX 2024" 
	Escribir ""
	Escribir ""
	Escribir " *********************************************************************************************************************************************"
	Escribir ""
FinAlgoritmo
