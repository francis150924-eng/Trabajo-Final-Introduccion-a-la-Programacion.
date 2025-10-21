Funcion RegistrarUsuario
	
	Dimension nombres[10], claves[10]
    Definir contador, pos Como Entero
    contador <- 0
	
	Si contador < 10 Entonces
		pos <- contador + 1
		Escribir "Ingrese un nombre de usuario nuevo:"
		Leer nombres[pos]
		Escribir "Cree una contrase�a:"
		Leer claves[pos]
		contador <- contador + 1
		Escribir " Usuario creado correctamente."
	SiNo
		Escribir "No se pueden registrar m�s usuarios."
	FinSi
FinFuncion


Funcion VerificarClave
	Definir clave Como Cadena
	Definir long, tieneMayus, tieneNum, j Como Entero
	Definir letra Como Cadena
	tieneMayus <- 0
	tieneNum <- 0
	
	Escribir "Digite la contrase�a que desea comprobar:"
	Leer clave
	long <- Longitud(clave)
	
	Para j <- 1 Hasta long Con Paso 1 Hacer
		letra <- SubCadena(clave, j, j)
		Si letra >= "A" Y letra <= "Z" Entonces
			tieneMayus <- 1
		FinSi
		Si letra >= "0" Y letra <= "9" Entonces
			tieneNum <- 1
		FinSi
	FinPara
	
	Si long >= 8 Y tieneMayus = 1 Y tieneNum = 1 Entonces
		Escribir "Contrase�a SEGURA."
	SiNo
		Escribir "Contrase�a D�BIL, usa m�s caracteres, n�meros y may�sculas."
	FinSi
FinFuncion


Algoritmo SistemaSeguridad
	Definir opcion Como Entero
	
	Repetir
        Escribir ""
        Escribir "***** MEN� PRINCIPAL ******"
        Escribir "1. Comprobar fuerza de contrase�a"
        Escribir "2. Registrar nuevo usuario"
        Escribir "3. Cerrar programa"
        Escribir "Elija una opci�n:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                VerificarClave()
            2:
                RegistrarUsuario()
            3:
                Escribir "Cerrando el sistema..."
            De Otro Modo:
                Escribir "Opci�n no v�lida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

