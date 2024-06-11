# SCILAB CODE
```
clc; 
clear all; 
pi=3.14; lam = 3; 
theta = 0:0.01:(2*pi);
B = (2*pi)./lam; L = lam/4; 
E = (abs((cos(B*L*cos(theta)/2)-cos(B*L/2))./sin(theta))).^2; 
polarplot(theta,E); 
title("Radiation Pattern For Dipole Antenna:"); 
//take values of L as lam, lam/2, 3lam/2, lam/4
```
