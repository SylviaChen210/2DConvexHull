function L = func_GrahamScan(x,y)
%% Graham-Scan
%% sort the points by x-coordinate
%resulting in a sequence p1...pn
N = length(x);
sortpoint = func_sortPoint(x,y);
%È¡×ø±êsortval(1,:)
%% first compute only those convex hull vertices that lies on the upper hull
%put the point p1 and p2 in a list L_upper with p1 as the first point
l_upper = [sortpoint(1,:);sortpoint(2,:)];
flag = size(l_upper,1); %number of rows
for i = 3:N
    l_upper(flag+1,:)=[sortpoint(i,:)]; %append pi to l_upper
    % L_upper contains more than 2 points and the last 3 do not make a right turn
    while size(l_upper,1)>2 && func_crossproduct(func_lastthree(l_upper)) <= 0
        %delete the middle of the lasr 3 points from l_upper
        l_upper(end-1,:)=[]; 
    end
    flag =  size(l_upper,1);
end

%% then, compute the remaining part of the convex hull, the lower hull
%put the point pn and pn-1 in a list Llower with pn as the first point
l_lower = [sortpoint(N,:);sortpoint(N-1,:)];
flag1 = size(l_lower,1); %number of rows
for i = (N-2): -1 :1
    l_lower(flag1+1,:)=[sortpoint(i,:)]; %append pi 
    % L_lower contains more than 2 points and the last 3 points in L_lower do not make a right turn
    while size(l_lower,1)>2 && func_crossproduct(func_lastthree(l_lower)) <= 0
        %delete the middle of the lasr 3 points from l_upper
        l_lower(end-1,:)=[]; 
    end
    flag1 =  size(l_lower,1);
end

%% Remove the first and the last point from L_lower
l_lower(1,:)=[];  
l_lower(end,:)=[]; 
%% Append L_upper and L_lower, and call the resulting list L
L = [l_upper;l_lower];