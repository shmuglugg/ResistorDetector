function [resistances, boundaries, centroids] = ResistorFinder(bands)
%RESISTCALC Summary of this function goes here
%   Detailed explanation goes here

tracker = 0;
resistor = [];
boundaries = [];
centroids = [];
resistances = [];
temp = bands;

N = length(bands);

for i = 1:N
    color = bands{1,i};
    x = bands{2,i}(1);
    y = bands{2,i}(2);
    bounding = bands{3,i};
    
    if strcmp(color, 'gold')
            temp = bands;
            count = 0;
            curlow = 0;
            idx = 0;
            prev = 0;
            
            for k = 1:3
                curlow = 100000;
                
                for j = 1:N
                    tempcolor = bands{1,j};
                    tempx = bands{2,j}(1);
                    tempy = bands{2,j}(2);

                    distance = sqrt((tempx-x)^2+(tempy-y)^2);

                    if ((distance < curlow) & ~(strcmp(tempcolor, 'gold')) & ~(j == prev) & ~(j == tracker))
                        curlow = distance;
                        idx = j;
                    end
                end
             resistor(k) = idx;
             x = bands{2,idx}(1);
             y = bands{2,idx}(2);
             prev = tracker;
             tracker = idx;
            end
            resistance = resistcalc([bands{1,resistor(3)};bands{1,resistor(2)};bands{1,resistor(1)}]);
            bounds = bands{3,idx};
            centroid = bands{2,idx};
            centroids = [centroids; centroid];
            boundaries = [boundaries; bounds];
            resistances = [resistances, resistance];
    end
end
            
            
            
        


end


