function c_p = func_crossproduct(Last_three)
% aculate cross product
% if c_p > 0, right turn; else left turn 
%% *********************
%get the point
p1 = Last_three(1,:);
p2 = Last_three(2,:);
p3 = Last_three(3,:);

%get the vector
p1p2 = p2 - p1;
p2p3 = p3 - p2;

% x,y
x1 = p1p2(1,1);
y1 = p1p2(1,2);

x2 = p2p3(1,1);
y2 = p2p3(1,2);

%% caculate cross product
c_p = x1*y2 - y1*x2;