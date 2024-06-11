# MATLAB DIRECT FUNCTION CODE
```
clc;
clear all;
close all;
A=imread("pout.tif");
subplot(2,2,1);
imshow(A);
title('orignal image');
subplot(2,2,2);
histogram(A);
title('histogram of og image');
B=histeq(A);
subplot(2,2,3);
imshow(B);
title('histogram equalization');
subplot(2,2,4);
imhist(B);
title('HIstogram of equalized image');
```


# Incomplete Proper Code
```

clear all;
A = imread('cameraman.tif');
[M,N]=size(A);
l = max(max(A));
L = l+1;
n=M*N;
nk = zeros(l,L);
% roun is the rounded values
roun = zeros(l,L);
cdf = zeros(l,L);
sk = zeros(l,L);
Eq = zeros(l,L);
r = zeros(l,L);
pr = zeros(l,L);
k = zeros(l,L);
subplot(2,2,1);
imshow(A);
title('Original Image');
%k is the number of gray levels
for i = 1:M
    for j = 1:N
        k = A(i,j);
        nk(k+1)=nk(k+1)+1;
    end;
end;
figure(1);
subplot(2,2,2);
bar(nk);
title('Histogram of original image is:');
pr=nk/n;
cdf(1)=pr(1);
sk(1)=cdf(1)*1;
r(1)=round(sk(1));
for i = 2:1+1
    cdf(i) = cdf(i-l)+pr(i);
    sk(i)=cdf(i)*l;
    r(i)= round(sk(i));
end;
for i = 1:M
    for j = 1:N
        k2 = A(i,j);
        Eq(i,j)=r(k2+l);
    end;
end;
for i = 1:M
    for j = 1:N
        k1 = Eq(i,j);
        roun(k1+l)=roun(k1+l)+1;
    end;
end;
subplot(2,2,4);
bar(roun);
title('Histogram equalized image is:');
subplot(2,2,3);
imshow(uint8(Eq));
title('Histogram Equalised Image:');
```
