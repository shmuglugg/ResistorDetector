%%Read resistor picture file and output it, displays image variable size and class.
clc

I = imread('resistors.JPG');


bands = RedBandFind(I)
% stuff = ResistorFinder(bands);