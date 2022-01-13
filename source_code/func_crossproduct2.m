function c_p = func_crossproduct2(J,K,I)
% aculate cross product
% if c_p > 0,
%% *********************

%get the vector
JK = K-J;
JI = I-J;

% x,y
x1 = JK(1,1);
y1 = JK(1,2);

x2 = JI(1,1);
y2 = JI(1,2);

%% caculate cross product
c_p = x1*y2 - y1*x2;