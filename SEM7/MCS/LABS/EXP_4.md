# Code:
```
//Code For EXP 4
clc;
clear;
close;

population=input("Enter population : ")
B=input("Block probability : ");
lambda=input("Average number of calls : ")
calls=input("Average duration of call: ")
Au=lambda*(calls/60)

//For system A
nA=input("Enter number of cells in system A : ")
A=input("Total carrier traffic for System A (in Erlangs) : ")
U=A/Au
totalA=U*nA;
disp("Total number of subscribers that can be supported by system A : ")
disp(totalA)
marketPa=totalA/population
disp("Total market penetration for system A(%) : ")
disp(marketPa*100);

//For system B 
nB=input("Enter number of cells in system B : ")
Ab=input("Total carrier traffic for System B(in Erlangs) : ")
Ub=Ab/Au
totalB=Ub*nB
disp("Total number of subscribers that can be supported by system B : ")
disp(totalB)
marketPb=totalB/population
disp("Total market penetration for system B(%) : ")
disp(marketPb*100);

//For system C 
nC=input("Enter number of cells in system C : ")
Ac=input("Total carrier traffic for System C(in Erlangs) : ")
Uc=Ac/Au
totalC=Uc*nC
disp("Total number of subscribers that can be supported by system C : ")

disp(totalC)
marketPc=totalC/population
disp("Total market penetration for system C(%) : ")
disp(marketPc*100);

t=(totalA+totalB+totalC)/population
disp("Total market penetration for 3 system combined (%) : ")
disp(t*100);

```
