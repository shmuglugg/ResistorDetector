%%Read resistor picture file and output it, displays image variable size and class.
clc
height = 300;
width = 300;
I1 = imread('resistors.JPG');
I = rgb2gray(I1);
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
figure;
imshowpair(BW1,BW2,'montage')
title('Sobel Filter                                   Canny Filter');