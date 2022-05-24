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
txt_num1_3 db "Ingresa el Numero a calcular: ",0

resultado_3 byte ?

txt_resultado_1 db "El Numero calculado al cubo es de: ", 0

.code
main3 PROC
; Lógica del Programa
	mov edx, offset txt_num1_3  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante

	mov ebx, eax ; movemos el numero dado por el usuario que se almacena en eax en ebx para utilizarlo de multiplo
	
	mul ebx ; multiplicas ebx y el resultado pasa a eax

	mul ebx ; multiplicas otra vez ebx que seria el numero dado por eax dando asi multiplicacion al cubo

	mov edx, offset txt_resultado_1 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString 
	call writeint

	call crlf

exit

main3 ENDP

END main3