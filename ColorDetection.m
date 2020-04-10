function [HSV] = ColorDetection(RGB)
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


% Convert RGB image to chosen color space
I = rgb2hsv(RGB);

%Iterate through the image checking for HSV ranges and setting the RGB
%pixels to preset color through color thresholding

%BLACK
% Define thresholds for channel 1 based on histogram settings
black1Min = 0.045;
black1Max = 0.115;

% Define thresholds for channel 2 based on histogram settings
black2Min = 0.243;
black2Max = 0.944;

% Define thresholds for channel 3 based on histogram settings
black3Min = 0.071;
black3Max = 0.173;

%RED
red1Min = 0.985;
red1Max = 0.024;

red2Min = 0.473;
red2Max = 0.871;

red3Min = 0.351;
red3Max = 0.642;


end

