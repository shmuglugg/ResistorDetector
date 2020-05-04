%%Read resistor picture file and output it, displays image variable size and class.
clc
I = imread('resistors.JPG');


bands = BandFind(I);
[resistances, boundaries, centroids] = ResistorFinder(bands);

n = length(resistances)

figure, imshow(I);

hold on;
for i = 1:n
    rectangle('Position',boundaries(i,:),'EdgeColor','r','LineWidth',2)
    text(centroids(i,1),centroids(i,2),int2str(resistances(i)));
end
hold off;
% euclideandistance = hypot(bsxfun(@minus, X, X'), bsxfun(@minus, Y, Y'));
