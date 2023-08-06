

function weight=DeltaBatch(weight,input,Desired)
eta=0.9;  
dWsum=zeros(3,1);   

N=4;
for k=1:N
    x=input(k,:)';
    %disp(x)
    v=weight*x;
    y=Sigmoid(v);
    d=Desired(k);
    e=d-y;
    delta=y*(1-y)*e;
    dW=eta*delta*x;  
    
    dWsum=dWsum+dW; 
end
    dWavg=dWsum/N;  
    weight(1)=weight(1)+dWavg(1);
    weight(2)=weight(2)+dWavg(2);
    weight(3)=weight(3)+dWavg(3);
end