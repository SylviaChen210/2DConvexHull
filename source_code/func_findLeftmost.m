function flag = func_findLeftmost(x,y)
% start from the leftmost point (or point with minimum x coordinate value)
%return index
%% *********************
%% initial
N=length(x);
minX = x(1);
minY = y(1);
flag = 1;
%% find the min x coordinate
for i = 2:N
   if x(i)< minX
       minX = x(i);
       minY = y(i);
       flag = i;
   end
   %if x has the same value, find the min y coordinate value
   if x(i) == minX && y(i)<minY
       minX = x(i);
       minY = y(i);
       flag = i;
   end
end

