# CODE:
```
clc;
clear;
close;
d = input("Enter the distance between transmitter and receiver: ");
Pt = input("Enter the transmitter power: ");
Gt = input("Enter the transmitter gain: ");
Gr = input("Enter the receiver gain: ");
f = input(" Enter carrier frequency: ");
c = 3*10^8;
lambda = c/f;
Pr = 10*log10((Pt*Gt*Gr*(lambda^2))/((4*%pi*d)^2));
disp("Receiver Power: "+ string(Pr)+ " dBW");
Pr_w = 10^((Pr)/10)
Emag = sqrt((Pr_w*120*%pi*4*%pi)/(Gr*(lambda^2))) 
disp("Magnitude of electric field at receiver: " + string(Emag)+ " V/m");
Rr = input("Enter receiver antenna impedance: ");
Vr = sqrt(Pr_w*4*Rr);
disp("Rms voltage applied to the receiver input: "+ string(Vr*1000)+ " mV");
```

# Writeup under process
![gt1](https://github.com/charminar-3000/PROLABS/assets/113937215/735e0529-aac0-463d-b0c8-5c11bc054767)


![gt3](https://github.com/charminar-3000/PROLABS/assets/113937215/da2ffb90-2ba0-4fa3-bd7b-0e35d6f7ea2a)


![gt2](https://github.com/charminar-3000/PROLABS/assets/113937215/0559acb8-5906-487d-b7a5-880597dc4780)


![gt4](https://github.com/charminar-3000/PROLABS/assets/113937215/cc670d22-33b1-4bf7-852b-41cdcc4715d6)


![gt5](https://github.com/charminar-3000/PROLABS/assets/113937215/5c102d34-65a2-42e0-8866-2e33066824c5)


![gt6](https://github.com/charminar-3000/PROLABS/assets/113937215/af9ef522-89d0-4adf-a668-a0eca40d2d83)




