
SC INICIO
SC RESULTADO
HM /000

VAL_1       K /0001  ; Constante com valor 1
VAL_0       K /0000  ; Constante com valor 0
RESP_1      K /0001 

INICIO      K /010
            LD /100  ; Carrega o valor de N (posição 0x100) no acumulador (AC)
            ML RESP_1 
            MM RESP_1 
            LD /1OO
            SB VAL_1 ; Subtrai 1 de N (AC = N - 1)
            MM /100  ; Armazena o novo valor de N
            JZ FIM   ; Se N for 0, termina o programa
            JN FIM   ; Se N for negativo, termina o programa
            JP INICIO 
            


FIM    K/030
            LD RESP_1
            MM /102
            RS INICIO
