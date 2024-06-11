# MATLAB Code
```
close all;
clear all;
clc;

I1 = imread("image2.jpg");
A = rgb2gray(I1);
[r,c]=size(A);
B = 255-A;

th = input("Enter threshold value: ");
for i=1:r
    for j=1:c
        if (A(i,j) > th)
            C(i,j)=255;
        else C(i,j)=0;
        end
    end
end

%contrast stretching
M=imadjust(A,stretchlim(B),[]);

figure(1);
subplot(2,2,1), imshow(I1), title("Original Image");
subplot(2,2,2), imshow(B), title("Negative Image");
subplot(2,2,3), imshow(C), title("Threshold Image");
subplot(2,2,4), imshow(M), title("Contrast Stretching");

y = sgtitle("Name")

%bit plane slicing
n1=0;
for z=1:8
n1=n1+1;
s=255-(2^(n1-1));
s1=2^(n1-1);
for i=1:r
 for j=1:c
D(i,j)=bitand(A(i,j),s);
E(i,j)=bitand(A(i,j),s1);
end
end
figure(2);
subplot(4,3,z);
imshow(D);
title("BIT PLANE REMOVED");
y = sgtitle("Name")

figure(3);
subplot(4,3,z);
imshow(E);
title("BIT PLANE SLICING");
y = sgtitle("Name")

end

%log and power transformartion
F = im2double(I1);
factor = input("Enter the value of c: ");
gamma = input("Enter the value of Gamma: ");
x = F;
y = F;
for i=1:r
    for j=1:c
x(i,j)=factor*log(1+F(i,j));
y(i,j)=factor*(F(i,j))^gamma;
    end
end

figure(4);
subplot(2,2,1), imshow(I1), title("Original Image");
subplot(2,2,2), imshow(x), title("Log Transformation");
subplot(2,2,3), imshow(y), title("Power Transformation");
y = sgtitle("Name")
```
