clc
clear all
close all
input = [0 0 1 ; 0 1 1; 1 0 1; 1 1 1];
target = [0 0 0 1];
weight = 2*rand(1,3)-1;

%training
eta = 0.3;
iteration = 10000;
disp('epoch error');
for epoch = 1: iteration
    sum = weight*input';
    y = Sigmoid(sum); %like output
    error = target - y;
    del = y.*(1-y).*error;
    weight= weight+eta*del*input;
    sum_squared_error(epoch)= sse(error(:))/4;
    if mod (epoch,1000)== 0
     fprintf('%4d \t %f  \n ', epoch,sum_squared_error(epoch));
    
    end
    
end

disp(weight);

%testing
N = 4;
for k = 1:N
    s_input= input(k, : );
    sum = weight*s_input';
    y(k) = Sigmoid(sum);
end

display(y);




%figure
m= (-1:2);
n= (-weight(1)*m-weight(3))/weight(2);
figure(1)
hold on;
plot([0 0 1 ], 'b*', 'linewidth',2);
plot(1,1,'r+','linewidth',2);
plot(m,n,'g','linewidth',2);

axis([-.15 1.15 -.25 1.5]);
legend('class1', 'Class2', 'Decision Boundary');
title('Decision Boundary');
xlabel('Xcoordinate');
ylabel('Ycoordinate');
grid on;
hold off;



%error convergence curve

figure(2)
plot(1: iteration , sum_squared_error,'r');
axis on;
grid on;
