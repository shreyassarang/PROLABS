# SCILAB CODE
```
clc;
clear all;
close;
pi = 3.14;
theta =linspace(0,2*pi,1000);
E = cos(theta);
polarplot(theta, abs(E));
title("Radiation Pattern for Dipole Antenna");

```
