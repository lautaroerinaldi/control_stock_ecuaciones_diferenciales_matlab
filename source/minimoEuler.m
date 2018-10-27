function [FAmin, TCmin, TVmin, matriz] = minimoEuler(paso)

FAmin= abs(1 + paso * (0.05 - 0.1));
TCmin= 0.05;
TVmin= 0.1;

matriz = ones(17, 17);

for x= 1:17
    for y= 1:17
           FA= abs(1 + paso * (x*0.05 - (y*0.05+0.05)));
           matriz( x, y)= FA;
           if FA < FAmin
                FAmin= FA;
                TCmin= x*0.05;
                TVmin= y*0.05+0.05;
           end
    end
end

return
           