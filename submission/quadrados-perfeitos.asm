@ /000                  
INICIO   LV 0         
         MM N        
         MM QUAD     
         LV 1        
         MM SOMA    
         LV 100       
         MM ENDERECO   

LOOP     LD QUAD     
         ST ENDERECO   

         LD ENDERECO   
         AD DOIS       
         MM ENDERECO   

         LD QUAD    
         AD SOMA     
         MM QUAD    

         LD SOMA    
         AD DOIS    
         MM SOMA    

         LD N       
         AD UM      
         MM N       

         CP N, LIMITE 
         JZ FIM      
         JP LOOP     

FIM      HM =0       

@ /0F0               
N        K =0        
QUAD     K =0       
SOMA     K =1       
DOIS     K =2       
UM       K =1       
LIMITE   K =64      
ENDERECO K =100     
   
