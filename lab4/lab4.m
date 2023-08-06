clc;
clear all;
X=[0 0 1;
   0 1 1;
   1 0 1;
   1 1 1;
   ];
D=[0 1 1 0];
w1=2*rand(4,3)-1;
disp(w1);
w2=2*rand(1,4)-1;
for epoch=1:10000
    [w1 w2]=BackPropXor(w1,w2,X,D);
end
N=4;
for k=1:N
    x=X(k,:)';
    v1=w1*x;
    y1=Sigmoid(v1);
    v=w2*y1;
    y(k)=Sigmoid(v);
end

disp(y);