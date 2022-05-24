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
txt_x1_1 db "Ingresa la cordenada de X1 ",0
txt_x2_1 db "Ingresa la cordenada de X2 ",0
txt_y1_1 db "Ingresa la cordenada de Y1 ",0
txt_y2_1 db "Ingresa la cordenada de Y2 ",0

resultado_3 byte ?

txt_resultado_1 db "Las coordenadas del punto medio son: ", 0
txt_resultado2_1 db " X: ", 0
txt_resultado3_1 db " Y: ", 0

.code
main1 PROC
; Lógica del Programa
      
        ;Escritura de X1
	mov edx, offset txt_x1_1  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

		;Escritura de X2
	mov edx, offset txt_x2_1 ; como pasamos el dato anterior a ebx ahora escribimos la coordenada x2 
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ecx, eax

	;SUMAR
	add ebx, ecx

	;AHORA DIVIDIMOS
	mov edx, 0 ; limpia el registro edx
	mov eax,ebx
	mov ebx,2d
	div ebx ; el resultado se va a eax
	mov ebx, eax ; ahora almacenamos en ebx el valor de x1 y x2 para determinar el punto medio


	; Limpiamos los registros
	mov eax,0
	mov ecx,0
	
	;Escritura de Y1
	mov edx, offset txt_y1_1  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ecx, eax ; Pasamos el resultado a ecx

	;Escritura de Y2
	mov edx, offset txt_y2_1  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante

	;SUMAR Y1 y Y2
	add eax, ecx

	;AHORA DIVIDIMOS
	mov edx, 0 ; limpia el registro edx
	mov ecx,2d
	div ecx ; el resultado se va a eax
	mov ecx, eax ; 

	mov edx, offset txt_resultado_1 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString

	mov eax,ebx
	mov edx, offset txt_resultado2_1
	call writeString
	call writeint

	mov eax,ecx
	mov edx, offset txt_resultado3_1
	call writeString
	call writeint
	call crlf

exit

main1 ENDP

END main1