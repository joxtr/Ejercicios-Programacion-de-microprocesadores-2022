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



txt_intro_22 db "La compania de autobuses La curva loca, requiere determinar el costo que tendra el boleto de un viaje sencillo , esto basado en los kilome­tros por recorrer y en el costo por kilometro.",0

txt_resultado_22 db "El Precio del boleto es de: ",0

txt_x1_22 db "Ingresa los km que recorrera el autobus: ",0
txt_x2_22 db "Cuanto es el costo por kilometro: ",0

.code
main22 PROC
; Lógica del Programa

; escritura del menu
mov edx, offset txt_intro_22  ;
call writeString ; Escribir el string
call crlf
call crlf
; escritura y pedido de los datos
mov edx, offset txt_x1_22  ;
call writeString ; Escribir el string
call crlf
call readInt
mov ebx,eax

mov edx, offset txt_x2_22  ;
call writeString ; Escribir el string
call crlf
call readInt

mul ebx

mov edx, offset txt_resultado_22  ;
call writeString ; Escribir el string

call writedec

exit

main22 ENDP

END main22