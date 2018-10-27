function [t, u] = Euler(paso, tiempoinicial, tiempofinal, TC, TV, stockinicial)
% Euler(0.1, 0, 1.2, 0.1, 0.2, 100)
    
    t= zeros(fix((tiempofinal-tiempoinicial)/paso),1);
    u= zeros(fix((tiempofinal-tiempoinicial)/paso),1);
    u(1)= stockinicial;
    t(1)= tiempoinicial;
    
    contador= 1;
    
    for x= (tiempoinicial+paso) : paso : tiempofinal
        t(contador+1)= x;
        u(contador+1)= u(contador) + (paso * (TC-TV) * u(contador));
        contador= contador + 1;
    end
    
return
        