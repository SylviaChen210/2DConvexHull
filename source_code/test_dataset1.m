%test
clear all
clc
%% This is the test for dataset 1
%% initial some value
x0 = 0; %Center of the circle (x0,y0)
y0 = 0;
R = 100; %Radius of the circle
mean=200;
%% test for the running time of two algorithms
for i=1:100
    N = i*50;
    %% Generate N random coordinates
    [x,y]=func_randomPoint(x0,y0,R,N);
    %% running time of GrahamScan
    tic
    for j=1:mean
       L1 =func_GrahamScan(x,y);
    end
    T_g(i)=toc/mean;
    %% running time of JarvisMarch
    tic
    for j=1:mean
       L2 =func_JarvisMarch(x,y);
    end
    T_j(i)=toc/mean;
    %% size of the convex hull
    L(i)=length(L1);
    %% points of the data set
    xt(i)=N;
end

%% plot
plot(xt,T_g);
hold on
plot(xt,T_j);
