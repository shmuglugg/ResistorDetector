function [Final] = CreateMask(RGB)
%CREATEMASK Summary of this function goes here
%   Detailed explanation goes here
Blue = createBlueMask(RGB);
Brown = createBrownMask(RGB);
Gold = createGoldMask(RGB);
Green = createGreenMask(RGB);
Orange = createOrangeMask(RGB);
Purple = createPurpleMask(RGB);
Red = createRedMask(RGB);
White = createWhiteMask(RGB);
Yellow = createYellowMask(RGB);
      
Final = Blue
end

