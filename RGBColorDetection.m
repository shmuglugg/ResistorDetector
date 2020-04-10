function [Final] = RGBColorDetection(RGB, height, width)
%COLORDETECTION takes input of an image and returns an image with
%everything other than band colors masked out
%COLOR BAND RGB VALUES:
%black =  (0,0,0)
%red =    (255, 0 ,0)
%brown =  (153, 102, 51)
%orange = (255, 153, 0)
%yellow = (255, 255, 0)
%green =  (0, 255, 0)
%blue =   (0, 0, 255)
%purple = (255, 0 , 255)
%assigned detected as a variable to check if the pixel is one of the colors
detected = 0;

% Convert RGB image to chosen color space
I = RGB;

%Iterate through the image checking for HSV ranges and setting the RGB
%pixels to preset color through color thresholding

for row = 1:height
    for col = 1:width
detected = 0;
%BLACK
% Define thresholds for channel 1 based on histogram settings
Ch1Min = 0;
Ch1Max = 60;

% Define thresholds for channel 2 based on histogram settings
Ch2Min = 0;
Ch2Max = 60;

% Define thresholds for channel 3 based on histogram settings
Ch3Min = 0;
Ch3Max = 60;

%check to see if 
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 0;
    RGB(row, col, 2) = 0;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%RED
Ch1Min = 180;
Ch1Max = 255;
Ch2Min = 0;
Ch2Max = 60;
Ch3Min = 0;
Ch3Max = 60;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    I(row, col, 1)
    RGB(row, col, 1) = 255;
    RGB(row, col, 2) = 0;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%BROWN
Ch1Min = 123;
Ch1Max = 183;
Ch2Min = 72;
Ch2Max = 132;
Ch3Min = 21;
Ch3Max = 81;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 153;
    RGB(row, col, 2) = 102;
    RGB(row, col, 3) = 51;
    detected = 1;
end

%ORANGE
Ch1Min = 180;
Ch1Max = 255;
Ch2Min = 123;
Ch2Max = 183;
Ch3Min = 0;
Ch3Max = 60;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 255;
    RGB(row, col, 2) = 153;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%YELLOW
Ch1Min = 180;
Ch1Max = 255;
Ch2Min = 180;
Ch2Max = 255;
Ch3Min = 0;
Ch3Max = 60;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 255;
    RGB(row, col, 2) = 255;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%GREEN
Ch1Min = 0;
Ch1Max = 60;
Ch2Min = 180;
Ch2Max = 255;
Ch3Min = 0;
Ch3Max = 60;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 0;
    RGB(row, col, 2) = 255;
    RGB(row, col, 3) = 0;
    detected = 1;
end


%MISSING BLUE AND PURPLE TO BE IMPLEMENTED

if detected == 0
    RGB(row, col, 1) = 80;
    RGB(row, col, 2) = 80;
    RGB(row, col, 3) = 80;
    end
end

Final = RGB;
end

