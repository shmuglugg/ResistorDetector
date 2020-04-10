function [Final] = ColorDetection(RGB, height, width)
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
I = rgb2hsv(RGB);
counter = 0;
%Iterate through the image checking for HSV ranges and setting the RGB
%pixels to preset color through color thresholding

for row = 1:height
    for col = 1:width
        
%valuechecker
counter = counter+1;
if counter < 10
I(row,col,1)
I(row,col,2)
I(row,col,3)
end


detected = 0;
%BLACK
% Define thresholds for channel 1 based on histogram settings
Ch1Min = 0.045;
Ch1Max = 0.115;

% Define thresholds for channel 2 based on histogram settings
Ch2Min = 0.243;
Ch2Max = 0.944;

% Define thresholds for channel 3 based on histogram settings
Ch3Min = 0;
Ch3Max = 0.173;

%check to see if 
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    I(row, col, 1) = 0;
    I(row, col, 2) = 0;
    I(row, col, 3) = 0;
    detected = 1;
end

%RED
Ch1Min = 0.985;
Ch1Max = 0.024;
Ch2Min = 0.473;
Ch2Max = 0.871;
Ch3Min = 0.351;
Ch3Max = 0.642;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 255;
    RGB(row, col, 2) = 0;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%BROWN
Ch1Min = 0.011;
Ch1Max = 0.090;
Ch2Min = 0.398;
Ch2Max = 0.831;
Ch3Min = 0.179;
Ch3Max = 0.328;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 153;
    RGB(row, col, 2) = 102;
    RGB(row, col, 3) = 51;
    detected = 1;
end

%ORANGE
Ch1Min = 0.054;
Ch1Max = 0.081;
Ch2Min = 0.508;
Ch2Max = 0.892;
Ch3Min = 0.484;
Ch3Max = 0.778;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 255;
    RGB(row, col, 2) = 153;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%YELLOW
Ch1Min = 0.125;
Ch1Max = 0.139;
Ch2Min = 0.669;
Ch2Max = 0.825;
Ch3Min = 0.632;
Ch3Max = 0.826;
if (Ch1Min <= I(row, col, 1)) && (Ch1Max >= I(row, col, 1)) && (Ch2Min <= I(row, col, 2)) && (Ch2Max >= I(row, col, 2)) && (Ch3Min <= I(row, col, 3)) && (Ch3Max >= I(row, col, 3))
    RGB(row, col, 1) = 255;
    RGB(row, col, 2) = 255;
    RGB(row, col, 3) = 0;
    detected = 1;
end

%GREEN
Ch1Min = 0.265;
Ch1Max = 0.331;
Ch2Min = 0.403;
Ch2Max = 0.636;
Ch3Min = 0.302;
Ch3Max = 0.469;
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
end

Final = RGB;
end

