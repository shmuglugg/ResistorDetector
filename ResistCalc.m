function [output] = resistcalc(colors)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
value = 0;
colors;

for i = 1:3
    if strcmp(colors(i,:), 'black')
        value = 0;
    elseif strcmp(colors(i,:), 'brown')
        value = 1;
    elseif strcmp(colors(i,:), 'red')
        value = 2;
    elseif strcmp(colors(i,:), 'orange')
        value = 3;
    elseif strcmp(colors(i,:), 'yellow')
        value = 4;
    elseif strcmp(colors(i,:), 'green')
        value = 5;
    elseif strcmp(colors(i,:), 'blue')
        value = 6;
    elseif strcmp(colors(i,:), 'purple')
        value = 7;
    elseif strcmp(colors(i,:), 'white')
        value = 9;
    end

    if i == 1
        first = value;
    elseif i == 2
        second = value;
    else
        third = value;
    end
end
output = (10*first + second)*(10^(third));
end

