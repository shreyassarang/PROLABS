# SCILAB CODE
```
clc;
close;
pt=input("enter the value of transmitted power: ");
gt=input("enter the value of transmitted gain: ");
gr=input("enter the value of received gain: ");
r=input("distance between antenna: ");
lam=input("wavelength: ");
pr=pt*gt*gr*(lam/(4*3.14*(r)))^2;
disp("POWER RECEIVED",pr);
```
