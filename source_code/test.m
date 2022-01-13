%test
clear all
clc

%% initial some value
N = 80;
x0 = 0;
y0 = 0;
R = 100;

%% Generate N random coordinates
[x,y]=func_randomPoint(x0,y0,R,N);
%% Graham-Scan
L1 = func_GrahamScan(x,y);
%L1 = func_GrahamScan(x,Y);

%% Jarvis March
L2 = func_JarvisMarch(x,y);

%% drawing / Verify correctness
func_draw(L1,x,y)
figure
func_draw(L2,x,y)