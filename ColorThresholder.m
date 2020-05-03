%%Read resistor picture file and output it, displays image variable size and class.
clc

output = {};
temp = {};

I = imread('resistors.JPG');

[BW, Image] = createYellowMask(I);

strue = strel('square', 5);
struewhitesecond = strel('square', 10);
se = strel('rectangle',[7 20]);


struewhite = strel('square', 4);
sewhite = strel('rectangle', [3 15]);

J = imerode(BW, strue);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imclose(J, se);
J = imfill(J, 'holes');

stats = regionprops(J, 'centroid', 'BoundingBox');
centroids = cat(1,stats.Centroid);
n = length(centroids(:,1))

imshow(J)
hold on
plot(centroids(:,1),centroids(:,2),'r*')
hold off
