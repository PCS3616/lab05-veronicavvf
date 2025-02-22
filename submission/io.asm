SC INICIO
            HM /000

VAL_FIXO    K /3030
VAL_A       K /00A
VAL_10      K /010
VAL_100     K /100
VAL_A000    K /A000
X           K /0
Y           K /0
SOMA        K /0
SOMA_ALT    K /0
X_NOVO      K /0
Y_NOVO      K /0



INICIO      K /000
            GD /000 ; x1, x2
            MM X
            GD /000 ; ' ', ' '
            GD /000 ; y1, y2
            MM Y

            LD X
            SB VAL_FIXO
            MM X_NOVO

            LD Y
            SB VAL_FIXO
            MM Y_NOVO

            AD X_NOVO
            MM SOMA
            ML VAL_100
            ML VAL_10
            SB VAL_A000
            JN FINAL_0
            JZ FINAL_0
            LD SOMA
            SB VAL_A
            AD VAL_100
            MM SOMA_ALT
            JP FINAL_1


FINAL_0     LD SOMA
FINAL_1     AD VAL_FIXO
            PD /100
            RS INICIO
