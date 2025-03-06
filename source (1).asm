	JMP boot ;Esta es para saltarnos hasta la parte de boot, segun yo es pq lo demas de aqui abajo solo son definir valores y asi

Inicio    EQU 0xFF ; Aca esta desde donde va a empezar a leer para abajo, el nombre de inicio puede ser cualquiera, es como definir una variable 

Pantalla  EQU 0x2E0 ; Este estamos anotando el valor del display porque si nos damos cuenta el valor que pone de 2E0 es el valor de la posicion de la celda donde inicia el display
;EL EQU es para hacer que algo tome el valor que queramos, y el 0x antes de los numeros es para indicar que estamos hablando en hexadecimal

Caritas:	DB "(*-*)"	;Aqui vamos y decimos que la variable caritas defina sus bits en codigo ascii para poder guardar los valores en las celdas 
		DB 0		    ;Este 0 es para poder luego hacer funcionar la comparacion que hacemos despues
		DB "(*0*)"
		DB 0
        DB "(*~*)"
        DB 0
;Los DB pues es definir un bit, que se que es poner el valor deceado dentro de la celda

boot: ;Aqui habiamos saltado
	MOV SP, Inicio	; Hacemos que el puntero SP vaya a la posicion que marca el valor "Inicio" (FF),De aqui va a empezar a leer para abajo
	MOV C, Caritas	; Aqui el puntero C va a ir a la posicion que marca el valor de "Caritas", que seria el inicio de donde guardo la informacion
	MOV D, Pantalla	; El puntero D va a la posicion que marca el valor "Pantalla" (2E0)
	CALL .loop      ;Nos vamos a print antes de continuar
	HLT				; Se acaba todoooo
;MOV es para hacer que el puntero se mueva a un lugar que tu le digas, podriamos en lugar de poner Inicio solo poner 0xFF y deberia ser lo mismo, solo se le ponen nombres para no poner tanto numero
;CALL es para irse a esa parte del codigo, luego con el RET vuelves abajo del CALL para continuar
.loop:
	MOVB AL, [C]	; Aqui el puntero AL se va a mover a la posicion que le indique el valor que tiene dentro C 
    				;Ejemplo: El puntero AL en el primer momento se va a mover al 28 que indica el valor interno de la celda que esta señalando C
                    ;NO toma el valor de posicion de C porque este es 0003 si nos damos cuenta la primera vez que pasa por aqui, si no que toma el valor que dice adentro que es 28
	MOVB [D], AL	; Tomamos el valor de la posicion que tiene AL, el cual esta en la casilla 28, con esta le damos este valor a la casilla del puntero D
	INC C           ; Incrementamos la posicion del puntero C mas uno
	INC D 			; Lo mismo pero en D
	CMPB BL, [C]	; Checamos si la posicion de de BL es igual al valor de la casilla que esta señalando C
	JNZ .loop		; Si no es asi regresamos a .loop, si esto se cumple continuamos al resto del codigo
; Pues todo esto es para que se vayan poniendo las cosas en la pantalla
; MOVB es para mover un puntero/darle un valor a una casilla con otra posicion/valor de casilla

	MOV D, Pantalla ; D vuelve a la casilla inicial
    INC C           ; Incrementamos C para que este pase el 0 
    CALL .loop2	    ; Nos vamos a .loop2
   	CALL boot:      ; Volvemos a boot para seguir con el bucle, en caso de querer terminar el bucle borrar esta linea
    RET             ;Regresamos a la primera llamada que hicimos para finalizar el proceso
   
.loop2:
	MOVB AL, [C]	; Aqui volvemos a hacer el proceso anterior para sobreescribir lo que habiamos hecho anteriormente pero con otros valores
	MOVB [D], AL	
	INC C
	INC D
	CMPB BL, [C]	
    JNZ .loop2
    MOV D, Pantalla ; Denuevo volvemos a la posicion inicial de la pantalla
    INC C
    CALL .loop22  ;Nos vamos a otro loop para la 3ra carita
    RET           ;regresamos a la 2da llamada
.loop22:
	MOVB AL, [C]
    MOVB [D], AL
    INC C
    INC D 
    CMPB BL, [C]
    JNZ .loop22
    RET         ;Regresamaos a la 3ra llamada
    
    ;Losiento si me sobre extendi
    ;bleh :p -Choclotherock
