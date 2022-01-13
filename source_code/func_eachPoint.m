function [index_next,coord_next]= func_eachPoint(L,point,flag)
%  given a point as current point, find the next point in output
%% *********************
n = length(point);
start_point = L(end,:);

if(flag==n)
    index_next = 1;
else
    index_next = flag+1;
end
coord_next = point(index_next,:);

for k = 1:n
    cor = point(k,:);
    if (cor==start_point)
        continue
    end
    c_p = func_crossproduct2(start_point,coord_next,cor);
    if c_p < 0
        index_next = k;
        coord_next = cor;
    end
    
    if c_p==0
       d1 = norm(start_point-coord_next);
       d2 = norm(start_point-cor);
       if d1<d2
           index_next = k;
           coord_next = cor;
       end
    end
    
end