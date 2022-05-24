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
txt_numlados_14 db "Ingresa el Numero de lados del poligono ",0
txt_tam_14 db "Ingresa la medida de uno de los lados del poligono: ",0
txt_apotema_14 db "Cual es el valor del apotema: ",0
txt_resultado_14 db "El area del poligono es de: ",0
txt_cm_14 db " CM ",0

.code
main14 PROC
; Lógica del Programa-

;Escritura de lados del poligono
	mov edx, offset txt_numlados_14  
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

;Escritura de tamaño de uno de los lados
	mov edx, offset txt_tam_14  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ecx, eax ; Pasamos el resultado a ebx

	;Multiplicacion de lados * tamaño para obtener el perimetro
	mov eax, ebx
	mul ecx 
	mov ecx,eax

;Escritura del apotema del poligono
	mov edx, offset txt_apotema_14  ;
	call writeString ; Escribir el string
	call CrLf ; Salto de linea

	call readInt  ; Lectura de la variable entrante
	mov ebx, eax ; Pasamos el resultado a ebx

	;Calculo del area del poligono multiplicacion y division
	; area = perimetro(ecx) * apotema(ebx) / 2
	mov edx, 0d
	mov eax, ebx
	mul ecx 
	mov ecx, 2d
	div ecx

	mov edx, offset txt_resultado_14 ; mandamos a llamar el mensaje string y el numero resultante de la multi
	call writeString
	call writedec
	mov edx, offset txt_cm_14 ; 
	call writeString

exit

main14 ENDP

END main14