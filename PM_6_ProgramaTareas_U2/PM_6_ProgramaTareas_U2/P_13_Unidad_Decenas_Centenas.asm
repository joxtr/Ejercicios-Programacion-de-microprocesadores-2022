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
txt_descripcion_13 db "Calcular las unidades, decenas y centenas de un numero de tres cifras ",0

txt_x1_13 db "Ingresa un numero de 3 digitos: ",0
txt_resultado_13 db "El resultado es: ",0
txt_unidad_13 db "Unidad: ",0
txt_decena_13 db "Decena: ",0
txt_centena_13 db "Centena: ",0

.code
main13 PROC
; Lógica del Programa

;Escritura de la descripcion
mov edx, offset txt_descripcion_13  ;
call writeString ; Escribir el string
call crlf

;limpieza de registros 
mov ebx, 0 ; 
mov eax,0 ; para iniciar con 0 
mov ecx,0

mov edx, offset txt_x1_13  ;
call writeString ; Escribir el string
call CrLf ; Salto de linea

call readInt  ; Lectura de la variable entrante
mov ecx,eax

;division de la centena
mov edx, 0
mov ebx, 100d
div	ebx

;;;;;;;;;;;;;;;;;;
;;;;RESULTADO centena;;;;

mov edx, offset txt_centena_13  ;
call writeString ; Escribir el string
call writedec ;desplegar resultado de la centena
call CrLf ; Salto de linea

;Operacion decena
mov edx,0
mul ebx 
sub ecx,eax ;residuo esta en ecx
mov eax, ecx ; residuo pasa a eax
mov ebx,10d
div ebx

;;;;;;;;;;;;;;;;;;
;;;;RESULTADO DECENA;;;;

mov edx, offset txt_decena_13  ;
call writeString ; Escribir el string
call writedec ;desplegar resultado de la centena
call CrLf ; Salto de linea

; OPERACION UNIDAD
mov ebx,10d
mul ebx
sub ecx,eax
mov eax,ecx


;;;;;;;;;;;;;;;;;;
;;;;RESULTADO Unidad;;;;

mov edx, offset txt_unidad_13  ;
call writeString ; Escribir el string
call writedec ;desplegar resultado de la centena
call CrLf ; Salto de linea

exit

main13 ENDP

END main13