%basic 

%test
clear all
clc

N=8;

a = 1;
b = 2;
%r = a + (b-a) * rand(1,N)
%x=rand(1,N)*3;
%y=rand(1,N)*5;
%plot(x,y,'+');

x = [2,4,4,0];
y =[4,2,3,-1];

point = [x;y]
p = point'

sortval = sortrows(point',1) % the x-value
sortval1 = sortrows(point') % the x-value


x1 = [22 31];
x1([1])=[]
x1([3])=[10]

