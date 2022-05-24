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
txt_descripcion_15 db "Determinante de una matriz de 2 x 2 ",0
txt_x1_15 db "Ingresa el Numero de x1 ",0
txt_x2_15 db "Ingresa el Numero de x2 ",0
txt_x3_15 db "Ingresa el Numero de x3  ",0
txt_x4_15 db "Ingresa el Numero de x4  ",0

txt_resultado_15 db "La determinante de la matriz es: ",0
txt_coma_15 db " , ",0

.code
main15 PROC
; Lógica del Programa-

mov edx, offset txt_descripcion_15  
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

;Escritura de x1
	mov edx, offset txt_x1_15  
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ecx, eax ; Pasamos el resultado a ebx

;Escritura de x2
	mov edx, offset txt_x2_15  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

;Escritura de x3
	mov edx, offset txt_x3_15  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	
	;Multiplicacion de x2 y x3
	mul ebx 
	mov ebx,eax

	;Escritura de x4
	mov edx, offset txt_x4_15  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea
	mov eax,0d
	call readInt  ; Lectura de la variable entrante

	;Multiplicacion de x1 y x4
	mul ecx 
	mov ecx,eax

	;Mescla de los dos resultados
	add ecx, ebx
	mov eax, ecx
	

	;Despliegue de resultados
	mov edx, offset txt_resultado_15 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString
	call writeint

exit

main15 ENDP

END main15