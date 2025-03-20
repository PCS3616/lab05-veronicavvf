
SC INICIO
HM /000

VAL_1       K /0001  ; Constante com valor 1
VAL_0       K /0000  ; Constante com valor 0

INICIO      K /000
            LD /100  ; Carrega o valor de N (posição 0x100) no acumulador (AC)
            SB VAL_1 ; Subtrai 1 de N (AC = N - 1)
            MM /100  ; Armazena o novo valor de N
            JZ FIM   ; Se N for 0, termina o programa
            JN FIM   ; Se N for negativo, termina o programa

            LD /102  ; Carrega o valor de RES (posição 0x102) no AC
            ML /100  ; Multiplica AC por N (AC = RES * N)
            MM /102  ; Armazena o resultado em RES
            JP INICIO ; Repete o loop

FIM         LD /102  ; Carrega o valor de RES no AC
            PD /100  ; Envia o valor no AC para o dispositivo de saída
            HM /000  ; Para a máquina (halt)
