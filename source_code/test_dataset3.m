%test
clear all
clc
%% This is the test for dataset 1
%% initial some value
x0 = 0; %Center of the circle (x0,y0)
y0 = 0;
R1 = 200; %Radius of the circle
R2 = 400; %Radius of the circle
n=50;
%% test for the running time of two algorithms
for i=1:100
    N = i*50;
    %% Generate random coordinates
    [x1,y1]=func_randomPoint(x0,y0,R1,N );
    [x2,y2]=func_rP_oncircle(x0,y0,R2,n);
    %combine
    x=[x1,x2];
    y=[y1,y2];
    %% running time of GrahamScan
    tic
    for j=1:5
       L1 =func_GrahamScan(x,y);
    end
    T_g(i)=toc/5;
    %% running time of JarvisMarch
    tic
    for j=1:5
       L2 =func_JarvisMarch(x,y);
    end
    T_j(i)=toc/5;
    %% size of the convex hull
    L(i)=length(L1);
    %% points of the data set
    xt(i)=N;
end

%% plot
plot(xt,T_g);
hold on
plot(xt,T_j);

%% linear fit
figure
t1=polyfit(xt,T_g,1);
t2=polyfit(xt,T_j,1);
plot(xt,T_g,'*',xt,polyval(t1,xt))
hold on
plot(xt,T_j,'*',xt,polyval(t2,xt))


