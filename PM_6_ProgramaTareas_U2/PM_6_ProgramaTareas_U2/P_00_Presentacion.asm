TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
var1_0 byte "Alumno: Jose Jaime Armendariz Lopez    "
var2_0 byte "Carrera: ING. Sistemas Computacionales "
var3_0 byte "Universidad Autonoma de Tamaulipas     "
var4_0 byte "Materia: Programacion de Microprocesadores"

.code
main PROC
; L�gica del Programa

mov ax, 10

exit

main ENDP

END main