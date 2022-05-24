TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables



txt_intro_21 db "Una modista, para realizar sus prendas de vestir, encarga las X telas que necesita al ex­tranjero.",0
txt_intro2_21 db " Para cada pedido, tiene que proporcionar las medidas de las telas en centimetros, pero ella generalmente las tiene en metros.",0
txt_intro3_21 db " Ayudale a determinar cuantos centimetros de cada tela debe pedir con base en los metros que requiere. ",0

txt_resultado_21 db "La cantidad de centimetros a pedir es de: ",0

txt_x2_21 db "Ingresa la cantidad de metros que pedira: ",0

txt_x1_21 db "Cuantas telas pedira: ",0

txt_cm_21 db " cm ",0

.code
main21 PROC
; Lógica del Programa

; escritura del menu
mov edx, offset txt_intro_21  ;
call writeString ; Escribir el string

mov edx, offset txt_intro2_21  ;
call writeString ; Escribir el string

mov edx, offset txt_intro3_21  ;
call writeString ; Escribir el string
call crlf
call crlf

; Escritura de operaciones
mov edx, offset txt_x1_21  ;
call writeString ; Escribir el string
call readint
call crlf
	mov ecx, eax  ; enviamos a ecx el valor de eax por que asi con loop podremos controlar el numero de repeticiones
	mov ebx,100d

	
ciclo1:
	call crlf

	;Escritura de numero
	mov edx, offset txt_x2_21  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mul ebx

	call crlf
	mov edx, offset txt_resultado_21
	call writestring

	call writedec
	mov edx, offset txt_cm_21
	call writestring

	loop ciclo1


exit

main21 ENDP

END main21