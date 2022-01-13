% sort the points by x-coordinate
function sortval = func_sortPoint(x,y)
%% *********************
point = [x;y];
p = point';

sortval = sortrows(point'); % the x-value
%sortval = sortval1'