@ /000                  
K /0400 

@ /10
K /0000; n
K /0000; n^2
K /0100; endereco

@ /20
K /0000; cte 0x000
K /0001; cte 0x001
K /0002; cte 0x002
K /0040; cte 0x040 (64)


@ /30
K /9000; operacao de LOAD

@ /300
K /0000; Carrega endereco de retorno
K /8010; AC<= n
K /132E; Se n eh zero, PULA para 0x32E
K /5026; AC<= n - 64 (0x40)
K /1334; Se n = 64, PULA para 0x334
K /8010; AC<= n
K /5022; AC<= n-1
K /6024; AC <= (n-1)*2
K /4022; AC <= (2*(n-1))+1
K /4012; AC <= [(2*(n-1))+1] + n^2 (das somas anteriores)
K /9012; Atualiza valor de n^2 (endereco 0x012)
K /8014; AC<=endereco atual
K /4030; AC<= instrucao de load do AC pra memoria no endereco atual
K /931E; Joga a instrucao pro endereco 0x31E
K /8012; AC <= n^2
K /0000; Poe o n^2 no endereco correspondente
K /8010; AC<= n
K /4022; AC<= n+1
K /9010; n<=n+1
K /8014; AC<=endereco
K /4024; AC<=endereco+2
K /9014; endereco<=endereco+2
K /0302; Volta para 0x302
K /8020; AC<=0 (0x0)
K /9012; n^2<=0
K /0316; PULA para 0x0316
K /B300; Volta para endereco contido em 0x300

@ /400
K /A300; Chama a subrotina QUADRADO PERFEITO
K /C402; Para em 0x402  
   
