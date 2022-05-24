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

txt_intro1_25 db " El naufrago satisfecho ofrece hamburguesas sencillas, dobles y triples, las cuales tienen un costo de $20, $25 y $28 respectivamente.",0
txt_intro2_25 db " La empresa acepta tarjetas de credito con un cargo de $25 sobre la compra. Suponiendo que los clientes adquieren solo un tipo de hamburguesa.",0
txt_intro3_25 db " Se quiere determinar cuanto debe pagar una persona por N hamburguesas. ",0

txt_x1_25 db "Que tipo de hamburguesa compraras (elige pulsando el boton de las opciones): ",0
txt_eleccion_25 db "1.- sencilla      2.- doble       3.- triple",0

.code
main25 PROC
; Lógica del Programa

; Escritura de la intro del problema
mov edx, offset txt_intro1_25
call writestring
mov edx, offset txt_intro2_25
call writestring
mov edx, offset txt_intro3_25
call writestring
call crlf
call crlf
; Escritura del problema
mov edx, offset txt_x1_25
call writestring
call crlf
mov edx, offset txt_eleccion_25
call writestring

call writeint ; entrada del dato de eleccion







mov ax, 10

exit

main25 ENDP

END main25