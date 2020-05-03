function [output] = RedBandFind(Image)
%BandFind returns a cell array filled with matrices that include the color,
%centroid, and bounding box of each band after using color thresholding and
%blob analysis

%initializing output and structural elements
output = {};
temp = {};
strue = strel('square', 5);
se = strel('rectangle',[5 20]);
struewhite = strel('square', 4);
sewhite = strel('rectangle', [3 15]);


%============================================================ RED
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createGoldMask(Image);

%Apply region morphology of erosion, dilation, and fill in order to create
%well defined band regions
J = imerode(BW, strue);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imclose(J, se);
J = imfill(J, 'holes');

%Find the centroid and bounding box of each band blob
stats = regionprops(J, 'centroid', 'BoundingBox');
centroids = cat(1,stats.Centroid);
n = length(centroids)

%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {'gold' ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end

imshow(J);

end

