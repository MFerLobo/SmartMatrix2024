
// PROYECTO: CALCULADORA DE MATRICES Y DETERMINANTES CON GRAFICADOR DE FUNCIONES
// MATERIA: LABORATORIO -- COMISION:1.603
//INTEGRANTES: Fernanda Lobo Serra, Gustavo Fossati

Funcion sumar_matrices
	Definir Na, Ma, Nb, Mb, N, M Como Entero
	definir i, j Como Entero
	
	Escribir "Ingrese el nº de filas y columnas de la matriz A: N,M "
	Leer Na, Ma
	Escribir "Ingrese el nº de filas y columnas de la matriz B: N,M "
	Leer Nb, Mb
	Definir A,B, S como Entero
	Dimension A[Na,Ma]
	Dimension B[Nb,Mb]
	Si val_suma(Na, Ma, Nb, Mb) = 1 Entonces  // Llamada a la función validar para validar que se puedan sumar.
		Escribir "Las matrices A y B no se pueden Sumar/Restar. Deben ser del mismo orden"
	SiNo
		N = Na
		M = Mb
		Dimension S[N,M]
		para i = 1 hasta N Hacer			// Carga de datos de la Matriz A
			para j = 1 Hasta M Hacer
				Escribir "Ingresar el elemento: A[", i, ",", j, "]"
				Leer A[i,j]
			FinPara
		FinPara
		para i = 1 hasta N Hacer			// Carga de datos de la Matriz B
			para j = 1 Hasta M Hacer
				Escribir "Ingresar el elemento: B[", i, ",", j, "]"
				Leer B[i,j]
			FinPara
		FinPara
		
		Escribir " Matriz S = A + B "
		Escribir ""
		para i = 1 hasta N Hacer
			para j = 1 Hasta M Hacer
				S[i,j] = A[i,j] + B[i,j]
				Escribir "			         	",S[i,j] Sin Saltar
			FinPara
			Escribir ""
		FinPara
		
	FinSi
FinFuncion

Funcion multiplicar_matrices
	Definir Na, Ma, Nb, Mb, N, M Como Entero
	definir i, j, k, sum  Como Entero
	sum = 0
	Escribir "Ingrese el nº de filas y columnas de la matriz A: N,M "
	Leer Na, Ma
	Escribir "Ingrese el nº de filas y columnas de la matriz B: N,M "
	Leer Nb, Mb
	Definir A,B,P como Entero
	Dimension A[Na,Ma]
	Dimension B[Nb,Mb]
	Si val_prod(Na, Ma, Nb, Mb) = 1 Entonces	// llamada a función validar producto.
		Escribir "Las matrices A y B no se pueden Multiplicar. Debe cumplirse que Ma = Nb"
	SiNo
		N = Na
		M = Mb
		Dimension P[N,M]
		para i = 1 hasta Na Hacer
			para j = 1 Hasta Ma Hacer
				Escribir "Ingresar el elemento: A[", i, ",", j, "]"
				Leer A[i,j]
			FinPara
		FinPara
		para i = 1 hasta Nb Hacer
			para j = 1 Hasta Mb Hacer
				Escribir "Ingresar el elemento: B[", i, ",", j, "]"
				Leer B[i,j]
			FinPara
		FinPara
		
		Escribir " Matriz P = A x B "
		Escribir ""
		para i = 1 hasta N Hacer
			para j = 1 Hasta M Hacer
				sum = 0
				para k = 1 Hasta Ma Hacer
					sum = sum + A[i,k] * B[k,j]
				FinPara
				P[i,j] = sum
				
				Escribir "			    ",P[i,j] Sin Saltar
			FinPara
			Escribir ""
		FinPara
	FinSi
	
	
FinFuncion

Funcion trasponer_matrices // 
	
	Definir N, A, i, j Como Entero
	
	Escribir "Ingrese el nº de filas y columnas de la matriz  N = " Sin Saltar
	Leer N
	Dimension A[N,N]
	definir  AUX Como Entero
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
	para i = 1 hasta N Hacer
		para j = 1 Hasta N Hacer
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
	Escribir"-------------------------------------------------------------------------------------------------------------"
FinFuncion


Funcion flag = val_suma(na, ma, nb, mb)
	Definir flag Como Entero
	Si na = nb Y ma = mb Entonces
		flag = 0
	SiNo
		flag = 1
	FinSi
	
FinFuncion

Funcion flag = val_prod(na, ma, nb, mb)
	Definir flag Como Entero
	Si ma = nb  Entonces
		flag = 0
	SiNo
		flag = 1
	FinSi
	
FinFuncion

Funcion calculo_determinante
	Definir i, j, n Como Entero
	Definir matriz , det Como Real
	
	
	Escribir "Ingrese el orden (n) del determinante "
	Leer n
	Dimension matriz[n,n]
	
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
	Escribir "Determinante: "
	Escribir ""
	
	Para i = 1 Hasta n Hacer
		Para j = 1 Hasta n Hacer
			Escribir "          ", "a[",i, j,"]"," = ",  matriz[i,j]  Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "Desarrollo por fila 1 (Regla de Laplace): " 
	det = determinante(matriz,n)
	Escribir ""
	Escribir"*******************************************************************"
	Escribir "  Resultado : Determinante de la matriz = ", det
	Escribir"*******************************************************************"
	
FinFuncion

funcion det = determinante(matriz,n)
	
	definir det Como Real
	definir k, i, j, q Como Entero
	
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

Funcion graficar
	
	Definir opcion Como Entero
	Repetir
		Escribir ""
		Escribir "               [1] : Senoidal."
		Escribir "               [2] : Lineal."
		Escribir "               [3] : Cuadrática."
		Escribir "               [0] : Para retornar a Menú Principal."
		Escribir " "
		Escribir "Ingrese el tipo de función : " Sin Saltar
		leer opcion
		segun opcion Hacer
			opcion 1:
				graficar_seno
				
			opcion 2:
				GraficarFuncionLineal	
				
			opcion 3:
				GraficarFuncionCuadratica
		FinSegun
		
	Mientras Que ( opcion >=1 | opcion <0 )
	
FinFuncion

Funcion GraficarFuncionLineal
    Definir m, b, x,X0, fx Como Real
    Definir i, j Como Entero
	Definir grafica Como Caracter
	Definir AX, AY Como Entero
	AX = 120
	AY = AX/3
    Dimension grafica[AY+1, AX+1]  
	
    // Pedir al usuario la pendiente (m) y la intersección (b)
    Escribir "Introduce el valor de la pendiente (m): "
    Leer m
    Escribir "Introduce el valor de la intersección con el eje Y (b): "
    Leer b
	m=m/3
	b=b/3
	
    // Inicializar la matriz con espacios
    Para i <- 1 Hasta AY+1 Hacer
        Para j <- 1 Hasta AX+1 Hacer
            grafica[i, j] <- " "
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
//        i <- Redon(-fx + AY/2+2 ) // Escalar y centrar el valor de Y
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
	X0 = -Trunc(b*100/m)/100
	Escribir "Intersecciones con los ejes Iy,Ix: "
	Escribir "                                  Iy = ( 0 ; ", b*3," )"
	Escribir "                                  Ix = (", X0, " ; 0 )"
	Escribir ""
	Escribir"------------------------------------------------------------------------------------------------------------------------------------------------"
	Escribir ""
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
	
    // Pedir al usuario los coeficientes de la ecuación cuadrática
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
            grafica[i, j] <- " "
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
	
	Si a > 0 Entonces
		Escribir "El vertice corresponde a un Mínimo Absoluto"
	SiNo
		Escribir "El vertice corresponde a un Máximo Absoluto"
	FinSi
	
	a = a * Factor_escala		// Para retornar a valores originales y dar en forma correcta las coordenadas del vertica y posteriormente las raíces X1 y X2
	b= b * Factor_escala
	c= c * Factor_escala
	Xv = -Trunc((b*100)/(2*a))/100
	Yv = c + Trunc( -((b*b)/(4*a))*100)/100 
	Escribir "Coordenadas del vertice de la parábola (Xv; Yv): " Sin Saltar
	Escribir "(", Xv, " ; ", Yv, ") "
	
	R = b*b-4*a*c
	
	Si R<0 Entonces
		Escribir "La función cuadrática no corta el eje de abscisas, por lo tanto no cuenta con raíces reales."
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
		Escribir "                                                             I1(" ,X1," ; 0 )"
		Escribir "                                                             I2(" ,X2," ; 0 )"
		Escribir ""
		Escribir"------------------------------------------------------------------------------------------------------------------------------------------------"
		Escribir ""
		
	FinSi
FinFuncion

Funcion graficar_seno
	Definir grafica Como Caracter
	Definir angulo, seno, escala , DEF  Como Real
	Definir AA Como Entero
	AA = 15			// Amplitud de la función trigonométrica.
	Definir i, j,n Como Entero
	Definir AX, AY  Como Entero
	AX = 120		//(Rango-1) de eje x
	AY = 40			// (Rango-1) de eje y
	
	Dimension grafica[AY+1,AX+1] // Se dimensiona el tamaño de la "pantalla" o campo de graficación [y(x);x]
	Para i <- 1 Hasta AY+1 Hacer
		Para j <- 1 Hasta AX+1 Hacer
			grafica[i, j] <- ' '
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
	
	// Llenar la función seno
	
	angulo = -Pi
	Mientras (angulo >= -Pi Y angulo < Pi) Hacer
		seno = Sen(n*angulo+DEF*2*PI)
		i = Redon(-seno * AA + (AY/2) +1) // Escalar el seno y centrar en la gráfica
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
	Escribir"------------------------------------------------------------------------------------------------------------------------------------------------"
	Escribir ""
FinFuncion


// Equipo Laboratorio C 1.603: Fernanda Lobo Serra, Gustavo Fossati
Algoritmo matrices1
	Definir opcion Como Entero
		
	Repetir
		Escribir ""
		Escribir " ********************************************************** CALCULADORA DE MATRICES SMART 2024 ********************************************** "	
		Escribir ""
		Escribir ""
		Escribir "                                                             1: Sumar Matrices"
		Escribir ""
		Escribir "                                                             2: Multiplicar Matrices"
		Escribir ""
		Escribir "                                                             3: Trasponer Matrices cuadradas"
		Escribir ""
		Escribir "                                                             4: Determinante de una Matriz nxn"
		Escribir ""
		Escribir "                                                             5: Calculadora Gráfica"
		
		Escribir ""
		Escribir ""
		Escribir "         Seleccione la opción deseada o cero para finalizar: " Sin Saltar
		leer opcion
		si opcion <> 0 Entonces
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
					Escribir "Opcion ingresada incorrecta, vuelva a ingresar la opcion deseada"
			FinSegun
		FinSi
		
	Mientras Que opcion <> 0
	
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "                                                    Gracias por utilizar SMART-MATRIX 2024" 
	
	Escribir"------------------------------------------------------------------------------------------------------------------------------------------------"
	Escribir ""
FinAlgoritmo
