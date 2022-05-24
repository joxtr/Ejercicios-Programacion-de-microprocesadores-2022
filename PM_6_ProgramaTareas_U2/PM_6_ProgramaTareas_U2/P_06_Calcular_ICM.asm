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
txt_peso1_6 db "Cual es tu peso? : ",0
txt_altura_6 db "Cuanto mides ? : ",0
txt_resultado_6 db "Tu ICM es de : ",0

.code
main6 PROC
; Lógica del Programa

;Escritura de peso
	mov edx, offset txt_peso1_6  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

;Escritura de altura
	mov edx, offset txt_altura_6  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ecx, eax ; Pasamos el resultado a ebx

	;Multiplicar la estatura al cuadrado
	mul ecx 
	mov ecx,eax

	;Dividir peso / estatura para obtener
	mov edx, 0 ; limpia el registro edx
	mov eax,ebx
	div ecx
	

	mov edx, offset txt_resultado_6 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString
	call writedec


exit

main6 ENDP

END main6