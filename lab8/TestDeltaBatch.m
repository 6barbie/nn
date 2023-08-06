clc;
clear all;
close all;

 input=[0 0 1; 0 1 1; 1 0 1; 1 1 1 ]
 D =[ 0 ;0 ;1; 1]
 weight = 2*rand(1,3)-1;
 for epoch =1: 40000
     weight=DeltaBatch(weight,input,D);
 end
 disp('weights')
 disp(weight);
 
 
 N=4; %Testing
 for k = 1:N
     x= input(k,:)';
     v= weight*x;
     y(k)=Sigmoid(v);
 end
 disp('Output');
 disp(y);
 
 