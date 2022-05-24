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

txt_intro_23 db "Determinar aproximadamente cuantos meses, sema­nas, dias y horas ha vivido una persona, basado en su edad",0

txt_edad_23 db "Ingresa tu edad: ",0

txt_x1_23 db "Tu llevas viviendo: ",0
txt_x2_23 db " meses, ",0
txt_x3_23 db " semanas, ",0
txt_x4_23 db " dias, ",0
txt_x5_23 db " horas ",0

.code
main23 PROC
; Lógica del Programa

; escritura del menu
mov edx, offset txt_intro_23  ;
call writeString ; Escribir el string
call crlf
call crlf

; escritura y pedido de los datos
mov edx, offset txt_edad_23  ;
call writeString ; Escribir el string
call crlf
call readInt

mov ebx,12d

mul ebx ;calculo meses

mov edx, offset txt_x1_23  ; tu llevas viviendo:
call writeString ; Escribir el string
call crlf
call writedec

mov edx, offset txt_x2_23  ; meses
call writeString ; Escribir el string

mov ebx,4 ; calculo semanas

mul ebx

call writedec
mov edx, offset txt_x3_23  ; semanas
call writeString ; Escribir el string

mov ebx,7d

mul ebx

call writedec
mov edx, offset txt_x4_23  ; dias
call writeString ; Escribir el string

mov ebx,24d

mul ebx

call writedec
mov edx, offset txt_x5_23  ; horas
call writeString ; Escribir el string

exit

main23 ENDP

END main23