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
txt_problemaprograma_7 db "Calcular la distancia recorrida (D) por una persona que tiene una velocidad constante (V) durante un cierto tiempo (T)",0

txt_velocidad_7 db "Cual es la velocidad constante a la que va la persona : ",0
txt_tiempo_7 db "Cuanto tiempo duro haciendo el recorrido : ",0
txt_resultado_7 db "La distancia recorrida es de : ",0
txt_metros_7 db " metros ",0

.code
main7 PROC
; Lógica del Programa

;Escritura de intro
	mov edx, offset txt_problemaprograma_7  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea
	call CrLf ; Salto de linea

;Escritura de la velocidad
	mov edx, offset txt_velocidad_7  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

;Escritura de tiempo
	mov edx, offset txt_tiempo_7  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	;mov ecx, eax 

;Multiplicar la estatura al cuadrado
	mul ebx 
	
	

	mov edx, offset txt_resultado_7 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString
	call writeInt 
	mov edx, offset txt_metros_7
	call writeString

exit

main7 ENDP

END main7