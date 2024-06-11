# Code:
```
clc;
clear;
close;
d1 = 1000;
d2 = 1000;
//d1 = input("Enter d1(Km): ");
//d2 = input("Enter d2(Km): ");
//h2 = input("Enter second value of H(m):");
//h3 = input("Enter third value of H(m):");
h = input("Enter first value of H(m):");
lambda = 1/3;
dell = ((h**2)*(d1+d2))/(2*d1*d2);
//Phi = (2*%pi*dell)/lambda;
v = h*sqrt((2*(d1+d2))/(lambda*d1*d2));
n = 2*dell/h;
disp("Dell: "+string(dell));
disp("v: "+string(v));
disp("n: "+string(n));

if (v<=-1) then
    Gd = 0;
elseif (-1<v) & (v<=0) then
    Gd = 20*log10(0.5-0.625*v);
elseif (0<v) & (v<=1) then
    Gd = 20*log10(0.5*exp(-0.95*v));
elseif (1<v) & (v<=2.4) then
    Gd = 20*log10(0.4-sqrt(0.118-(0.38-0.1)^2));
elseif (v>2.4) then
    Gd = 20*log10(0.225/v) ;
end
disp("Gd:"+string(Gd)+"dB");


```
