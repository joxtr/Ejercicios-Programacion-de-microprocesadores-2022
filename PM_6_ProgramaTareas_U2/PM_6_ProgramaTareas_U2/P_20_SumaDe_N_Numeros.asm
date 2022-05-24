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

txt_x1_20 db "Ingresa el Numero: ",0
txt_x2_20 db "Cuantos numeros pedira para la sumatoria ",0
txt_resultado_20 db "El resultado del promedio es: ",0
txt_intro_20 db "Pedir N numeros e imprimir la sumatoria de todos ellos",0

.code
main20 PROC
; Lógica del Programa

;Escritura del menu
mov edx, offset txt_intro_20  ;
call writeString ; Escribir el string
call crlf

;Escritura del despliegue de numeros
mov edx, offset txt_x2_20  ;
call writeString ; Escribir el string
call crlf
call readInt  ; Lectura de la variable entrante
mov ebx,eax
;add ebx,1d

;mov ebx, 0 ; la impresion de las tablas comienza en 1 
mov eax,0 ; para iniciar con 0 
mov ecx,0

ciclo1:

	
	call crlf

	;Escritura de numero
	mov edx, offset txt_x1_20  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	add eax, ecx 
	
	mov ecx, eax ; Pasamos el resultado a ecx

	inc ebx
	;mov eax,ebx
	;call writedec

	cmp ebx, 6
	jle ciclo1

	
	

	mov edx, offset txt_resultado_20  ;
	call writeString ; Escribir el string
	call writedec
	
			
		
		

exit

main20 ENDP

END main20