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
txt_intro_16 db "Primeros N numeros de la serie fibonnaci  ",0
txt_x1_16 db "Ingresa la cantidad de numeros que se desplegaran en fibonnaci: ",0


txt_resultado_16 db "Secuencia de fibonnaci: ", 0

.code
main16 PROC
; Lógica del Programa

  ; escritura del menu
mov edx, offset txt_intro_16  ;
call writeString ; Escribir el string
call crlf

; Escritura de operaciones
mov edx, offset txt_x1_16  ;
call writeString ; Escribir el string
call readint

call crlf
	mov ecx, eax  ; enviamos a ecx el valor de eax por que asi con loop podremos controlar el numero de repeticiones
	

mov edx, offset txt_resultado_16  ;
call writeString ; Escribir el string
call CrLf ; Salto de linea
mov ebx,1d
mov eax,0d

	ciclo1:
	mov edx,eax
	add edx,ebx
	mov eax,ebx
	mov ebx,edx
	call writeint
	loop ciclo1
	
	exit

main16 ENDP

END main16