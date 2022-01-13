% made sure that the algorithms are guaranteed to be correct
function func_draw(L,x,y)
%% *********************
con_x1 = [L(:,1);L(1,1)];
con_y2 = [L(:,2);L(1,2)];
scatter(x,y);
hold on
scatter(con_x1,con_y2,'filled');
hold on
plot(con_x1,con_y2);
