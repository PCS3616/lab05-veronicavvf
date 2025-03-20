
START   SC /200 
END     HM =0   

@ /100
N       k =0    
RES     k =1    
AUX1    k =1   
AUX2    k =1  
ONE     k =1   
 
@ /200
JP START       
LD N            
JZ /212         
MM AUX1         
ML AUX2         
MM AUX2         
LD AUX1         
SB ONE          
JP /204         
LD AUX2         
MM RES          
RS /200         
