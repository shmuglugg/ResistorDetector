function [output] = BandFind(Image)
%BandFind returns a cell array filled with matrices that include the color,
%centroid, and bounding box of each band after using color thresholding and
%blob analysis

%initializing output and structural elements
output = {};
temp = {};
strue = strel('square', 5);
se = strel('rectangle',[5 20]);
struewhite = strel('square', 4);
struewhitesecond = strel('square', 10);
sewhite = strel('rectangle', [3 15]);


%============================================================ RED
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createRedMask(Image);

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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"red" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ BLACK
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createBlackMask(Image);

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
if ~(isempty(centroids))
n = length(centroids(:,1));

%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"black" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ BLUE
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createBlueMask(Image);

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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"blue" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ BROWN
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createBrownMask(Image);

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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"brown" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ GOLD
temp = {};
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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"gold" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ GREEN
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createGreenMask(Image);

%Apply region morphology of erosion, dilation, and fill in order to create
%well defined band regions
J = imdilate(BW, se);
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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"green" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ ORANGE
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createOrangeMask(Image);

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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"orange" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ PURPLE
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, ~] = createPurpleMask(Image);

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
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"purple" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ WHITE
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createWhiteMask(Image);

%Apply region morphology of erosion, dilation, and fill in order to create
%well defined band regions
J = imdilate(BW, struewhite);
J = imerode(J, sewhite);
J = imerode(J, struewhitesecond);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imfill(J, 'holes');
J = imclose(J, strue);

%Find the centroid and bounding box of each band blob
stats = regionprops(J, 'centroid', 'BoundingBox');
centroids = cat(1,stats.Centroid);
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"white" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end
%============================================================ YELLOW
temp = {};
%Create a binary image BW with a RED thresholding mask 
[BW, Mask] = createYellowMask(Image);

%Apply region morphology of erosion, dilation, and fill in order to create
%well defined band regions
J = imdilate(BW, struewhite);
J = imerode(J, sewhite);
J = imerode(J, strue);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imdilate(J, se);
J = imfill(J, 'holes');
J = imclose(J, strue);

%Find the centroid and bounding box of each band blob
stats = regionprops(J, 'centroid', 'BoundingBox');
centroids = cat(1,stats.Centroid);
if ~(isempty(centroids))
n = length(centroids(:,1));
%iterate over each blob to enter information into output cell array
for i = 1:n
    temp = {"yellow" ; stats(i).Centroid ; stats(i).BoundingBox};
    output = [output, temp];
end
end






end

