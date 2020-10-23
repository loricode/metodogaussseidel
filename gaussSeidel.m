#metodo de gauss-seidel - para resolver sistemas de ecuaciones lineales
clc;
cantidadIteraciones = input("Ingrese las itereaciones: ")    
                                       
                                       #calcular diagonal dominante
ecuacion1 = 3*x - 0.1*y - 0.2*z;       #|3| > |0.1| + |0.2| si cumple
ecuacion2 = 0.1*x + 7*y - 0.3*z;       #|7| > |0.1| + |0.3| si cumple
ecuacion3 = 0.3*x - 0.2*y - 10*z;      #|10| > |0.3| + |0.2| si cumple

b1 = 7.85; b2 = -19.30; b3 = 71.40;
 
                              
x = 0; y = 0; z = 0;
i = 0;

function ea = erroraproximado(xa,xp)
    ea = abs(((xa-(xp))/(xa))*100);
end

fprintf("%s\t %s\t %s\t %s\t %s\t %s\t %s\t %s\n",'i','x','y','z','|Ex|','|Ey|','|Ex|' );
fprintf ("\n");  
while(i < cantidadIteraciones)                 # Utilizando la formula nos queda:
    
    xn = ( 0.1*(y) + 0.2*(z) + 7.85)/3;        # x = ( 0.1*y + 0.2*z + 7.85)/3 
    x = xn; 
    yn = (- 0.1*(x)  + 0.3*(z) - 19.30)/7;     # y = (- 0.1*x + 0.3*z - 19.30)/7
    y = yn;
    zn = (- 0.3*(x) + 0.2*(y) + 71.40)/(-10);  # z = -(( -0.3*x + 0.2*y + 71.40))/10
    z = zn; 
    fprintf('%.0f\t', i); 
    fprintf('%.4f\t', xn);              
    fprintf('%.4f\t', yn);               
    fprintf('%.4f\t', zn);    
    i++;
      
    if i > 1
       fprintf('%.4f\t', erroraproximado(xn, xi));
       fprintf('%.4f\t', erroraproximado(yn, yi));  
       fprintf('%.4f\t', erroraproximado(zn, zi));
        
     end
    xi = xn;
    yi = yn;
    zi = zn; 
    fprintf ("\n"); 
end
    fprintf ("\n"); 
    fprintf("solucion para  x = %.4f\t\n", x); 
    fprintf("solucion para  y = %.4f\t\n", y); 
    fprintf("solucion para  z = %.4f\t\n", z);
    fprintf('b1 = %.2f\t\n', 3*x - 0.1*y - 0.2*z  ); 
    fprintf('b2 = %.2f\t\n', 0.1*x + 7*y - 0.3*z ); 
    fprintf('b3 = %.2f\t\n', 0.3*x - 0.2*y - 10*z ); 
    fprintf ("\n");
            
   



