function [t, U] = RK4(paso, tiempoinicial, tiempofinal, TC, TV, stockinicial)
% RK4(0.1, 0, 1.2, 0.1, 0.2, 100)
    
    t= zeros(fix((tiempofinal-tiempoinicial)/paso),1);    
    U= zeros(fix((tiempofinal-tiempoinicial)/paso),1);
    U(1)= stockinicial;
    t(1)= tiempoinicial;
    
    contador= 1;
    
    for x= (tiempoinicial+paso) : paso : tiempofinal
        t(contador+1)= x;
        q1= paso * (TC-TV) * U(contador);
        q2= paso * (TC-TV) * (U(contador) + q1/2);
        q3= paso * (TC-TV) * (U(contador) + q2/2);
        q4= paso * (TC-TV) * (U(contador) + q3);
       
        U(contador+1)= U(contador) + ((q1 + 2*q2 + 2*q3 + q4)/6);
        contador= contador + 1;
    end
    
return
        