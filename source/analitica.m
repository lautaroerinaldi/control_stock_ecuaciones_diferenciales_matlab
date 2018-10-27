function [t, u] = analitica(paso, tiempoinicial, tiempofinal, TC, TV)

t= zeros(fix((tiempofinal-tiempoinicial)/paso), 1);

u= zeros(fix((tiempofinal-tiempoinicial)/paso), 1);

for x= tiempoinicial:paso:tiempofinal
    t(fix(x/paso)+1)= x;
    u(fix(x/paso)+1)= 100 * exp((TC-TV)*x);
end

return

