%%Read resistor picture file and output it, displays image variable size and class.
clc
height = 300;
width = 300;
I = imread('resistors.JPG');
RGB = imresize(I, [height width]);

HSV = rgb2hsv(RGB);
colorThresholder(I)