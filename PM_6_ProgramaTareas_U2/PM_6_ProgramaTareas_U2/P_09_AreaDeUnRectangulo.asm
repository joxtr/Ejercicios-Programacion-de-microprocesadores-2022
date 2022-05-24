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
txt_problemaprograma_9 db "Calcular el area de un rectangulo",0

txt_base_9 db "Ingresa el tamaño de la base del rectagulo : ",0
txt_altura_9 db "Ingresa el tamaño de la altura del rectangulo : ",0
txt_resultado_9 db "El area es de : ",0
txt_cm_9 db " cm ",0

.code
main9 PROC
; Lógica del Programa

;Escritura de tema
	mov edx, offset txt_problemaprograma_9  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea
	call CrLf ; Salto de linea

;Escritura de la base
	mov edx, offset txt_base_9  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

;Escritura de altura
	mov edx, offset txt_altura_9  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	;mov ecx, eax 

;Multiplicar la estatura al cuadrado
	mul ebx 
	
	

	mov edx, offset txt_resultado_9 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString
	call writeInt 
	mov edx, offset txt_cm_9  
	call writeString

exit

main9 ENDP

END main9