function L = func_JarvisMarch(x,y)
%% Jarvis March
%start from the leftmost point (or point with minimum x coordinate value)
flag = func_findLeftmost(x,y);

%% initial 
point = [x;y]';
L = point(flag,:);%put leftmost point into list L
%% delete the leftmost point from point
%point(flag,:)=[];
%% 
bool_stop = true;
while(bool_stop)
     [index_next,coord_next]= func_eachPoint(L,point,flag); %find the next point
     if (coord_next==L(1,:))
         bool_stop = false;
     else
         L(size(L,1)+1,:) =  coord_next;
         flag = index_next;
     end
end
