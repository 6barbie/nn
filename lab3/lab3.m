clc;             
x=[0 0; 0 1; 1 0;1 1];
w=[1 -1;
  -1 1];
z1=zeros(4,1);
z2=zeros(4,1);
for i=1:4
    if x(i,:)*w(:,1)<1
        z1(i,1)=0;
    else
        z1(i,1)=1;
    end
    if x(i,:)*w(:,2)<1
        z2(i,1)=0;
    else
        z2(i,1)=1;
    end
end
disp(w);
y=[];
for i=1:4
    y(i)=z1(i,1)*1+z2(i,1)*1;
   
end
 disp(y);