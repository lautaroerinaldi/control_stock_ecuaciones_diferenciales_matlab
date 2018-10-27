function [FAmin, TCmin, TVmin, matriz] = minimoRK2(paso)

A= paso * (0.05 - 0.1);

FAmin= abs( 1 + A/2 * (2 + A));
TCmin= 0.05;
TVmin= 0.1;

matriz = ones(17, 17);

for x= 1:17
    for y= 1:17
           A= paso * (0.05*x - (0.05*y+0.05));
           FA= abs(1 + A/2 * (2 + A));
           matriz( x, y)= FA;
           if FA < FAmin
                FAmin= FA;
                TCmin= x*0.05;
                TVmin= y*0.05+0.05;
           end
    end
end

return
           