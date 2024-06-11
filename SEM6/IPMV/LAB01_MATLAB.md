# MATLAB Codes
## Code 1
```
clc;
close all;

I1 = imread("image1.jfif");
I2 = imread("image2.jfif");

I3 = imresize(I1,[200,200]);
I4 = imresize(I2,[200,200]);

subplot(4,4,1), imshow(I1), title("I1 Original");
subplot(4,4,2), imshow(I2), title("I2 Original");

I5 = imsubtract(I4,I3);
subplot(4,4,3), imshow(I5), title("I2-I1");

I6 = imadd(I3,I4);
subplot(4,4,4), imshow(I6), title("I1 + I2")

I7 = bitand(I4,I3);
subplot(4,4,5), imshow(I7), title("And")

I8 = bitor(I3,I4);
subplot(4,4,6), imshow(I8), title("Or")

I9 = bitxor(I3,I4);
subplot(4,4,7), imshow(I9), title("xor")

I10 = bitcmp(I7);
subplot(4,4,8), imshow(I10), title("nand")

I11 = bitcmp(I8);
subplot(4,4,9), imshow(I11), title("nor")

I12 = immultiply(I4,I3);
subplot(4,4,10), imshow(I5), title("I2*I1")

I13 = imdivide(I4,I3);
subplot(4,4,11), imshow(I5), title("I2/I1");

I14 = bitcmp(I9);
subplot(4,4,12), imshow(I14), title("xnor");
```

## Code 2
```
clc;
close all;

I1 = imread("checkerboard1.jpg");
I2 = imread("checkerboard2.jpg");

I3 = imresize(I1,[200,200]);
I4 = imresize(I2,[200,200]);

subplot(4,4,1), imshow(I1), title("I1 Original");
subplot(4,4,2), imshow(I2), title("I2 Original");

I7 = bitand(I4,I3);
subplot(4,4,3), imshow(I7), title("And")

I8 = bitor(I3,I4);
subplot(4,4,4), imshow(I8), title("Or")

I9 = bitxor(I3,I4);
subplot(4,4,5), imshow(I9), title("xor")

I10 = bitcmp(I7);
subplot(4,4,6), imshow(I10), title("nand")

I11 = bitcmp(I8);
subplot(4,4,7), imshow(I11), title("nor")
```
