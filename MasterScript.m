%%Read resistor picture file and output it, displays image variable size and class.
clc
I = imread('resistors.JPG');


bands = BandFind(I);
stuff = ResistorFinder(bands);


% euclideandistance = hypot(bsxfun(@minus, X, X'), bsxfun(@minus, Y, Y'));
