%creates colorcloud of chosen image
clc
height = 300;
width = 300;
I = imread('res1clc.JPG');
RGB = imresize(I, [height width]);

colorcloud(RGB)