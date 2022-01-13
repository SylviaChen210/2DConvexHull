%function_random
function [x,y]=func_randomPoint(x0,y0,R,num_Dian)
%% Generate n random coordinates
%input: center and R of the circle, the number of the random points
%output: coordinates (x,y)
%% *********************
% Get the angle of the generated point and draw the point in polar coordinates
seta=2*pi*rand(1,num_Dian);
% Randomly generate radius
r=R*(rand(1,num_Dian));
% get the random points
x=x0+r.*cos(seta);
y=y0+r.*sin(seta);
