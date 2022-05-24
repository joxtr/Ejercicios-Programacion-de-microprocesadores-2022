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
txt_descripcion_18 db "Calcular el promedio de 5 números ",0

txt_x1_18 db "Ingresa el Numero: ",0
txt_resultado_18 db "El resultado del promedio es: ",0
txt_intro_18 db "Calcular el promedio de 5 numeros",0

.code
main18 PROC
; Lógica del Programa
mov edx, offset txt_intro_18  ;
call writeString ; Escribir el string
call crlf

mov ebx, 0 ; la impresion de las tablas comienza en 1 
mov eax,0 ; para iniciar con 0 
mov ecx,0
ciclo1:

	
	call crlf

	;Escritura de numero
	mov edx, offset txt_x1_18  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	add eax, ecx 
	
	mov ecx, eax ; Pasamos el resultado a ecx

	inc ebx
	;mov eax,ebx
	;call writedec

	cmp ebx, 4
	jle ciclo1

	; division del promedio
	mov edx, 0 ; limpia el registro edx
	call crlf
	mov eax, ecx
	mov ecx, 5
	div ecx
	mov edx, offset txt_resultado_18  ;
	call writeString ; Escribir el string
	call writedec
	
			
		
		

exit

main18 ENDP

END main18