# Batech C Code:
```
clc;
clear;
close;
TSB=input('Enter the value of Total spectrum bandiwtdh in Mhz: ')
CB=input('Enter the value of channel bandiwtdh in khz: ')
TCB=2*CB

N=TSB/TCB
N=N*1000
disp(N,'Total number of channels: ')
Acell=input('Enter the area of cell in sq km: ')
Ncell=input('Enter the number of cells: ')
Acluster=Acell*Ncell
disp(Acluster, 'Area of cluster: ')
Asystem=input('Enter the area of system in sq km: ')
Ncluster=Asystem/Acluster
disp(Ncluster, 'No of clusters: ')
Cellcap=N/Ncell
disp('Cell capacity: ',Cellcap)
Syscap=N*Ncluster
disp(Syscap, 'System Capacity: ')
```

# Code:
```
clear;
clc;
close;
Sp=input("Spectrum allocated (in kHz) : ");
fs=input("Simplex channel frequency(in kHz) : ");
//no. of channels
S=floor(Sp/(2*fs));
disp("No. of channels ",S)
A=input("Area allocated (in sq. km) : ");
r=input("Radius of cell (in km) : ");
a=round((3*sqrt(3)*r*r)/2);
disp("Area of cell ", a,"sq. km.")
N=input("cluster size: ");
//no. of cell
nc=floor(A/a);
disp("No. of cells ",nc);
//no. of clusters
M=floor(nc/N);
disp("No. of clusters ",M);
//no. of channels per cell
k=floor(S/N);
disp("No. of channels per cell ",k)
//system capacity
C=M*S;
disp("System capacity ",C)
```
![1](https://github.com/charminar-3000/PROLABS/assets/113937215/35517657-2443-40a8-ac64-aed8fbb69809)
![2](https://github.com/charminar-3000/PROLABS/assets/113937215/6eebebd7-d5be-4dbe-a143-0b3d7e34e5c1)
