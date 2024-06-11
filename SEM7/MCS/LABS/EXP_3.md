# Code:
```
clc;
clear;
f=input("Enter the frequency(MHz): ");
fc=f*(10^6);
c=3*(10^8);
lam = c/(fc);
v=input("Enter the speed with which mobile is moving(km/hr):")
V=v*(5/18);
theta=input("Enter the direction of movement of mobile(degree):");
theta1=theta*(%pi/180);
fd=(V/lam)*cos(theta1);
disp("The doppler shift:");
disp(int32(fd));
f1=(fc+fd)/(10^6);
disp("The final frequency moving towards the base station (in MHz):");
disp(f1);
f2=(fc-fd)/(10^6);
disp("The final frequency moving away from the base station (in MHz):");
disp(f2);
```
![1](https://github.com/charminar-3000/PROLABS/assets/113937215/6a90005b-6365-4263-b49b-cd57b66c1d93)
![2](https://github.com/charminar-3000/PROLABS/assets/113937215/d094fe7b-42a1-4a5b-80fa-663f5c8ec355)
![3](https://github.com/charminar-3000/PROLABS/assets/113937215/7c4f75bb-81dc-4987-b156-554e510cd5ba)
