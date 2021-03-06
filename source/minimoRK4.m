function [FAmin, TCmin, TVmin, matriz] = minimoRK4(paso)

A= paso * (0.05 - 0.1);
B= 1+ A/2;
C= 1 + A/2 * B;
D= 1 + A * C;


FAmin= abs( 1 + (A + 2*A*B + 2*A*C + A*D)/6 );
TCmin= 0.05;
TVmin= 0.1;

matriz = ones(17, 17);

for x= 1:17
    for y= 1:17
            A= paso * (0.05*x - (0.05*y+0.05));
            B= 1+ A/2;
            C= 1 + A/2 * B;
            D= 1 + A * C;
            FA= abs( 1 + (A + 2*A*B + 2*A*C + A*D)/6 );
            matriz( x, y)= FA;
           if FA < FAmin
                FAmin= FA;
                TCmin= x*0.05;
                TVmin= y*0.05+0.05;
           end
    end
end

return
           