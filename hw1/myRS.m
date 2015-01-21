function [ V,D,alpha ] = myRS( A,ql,qr )

[V,D]=eig(A);
dim=size(A);
[DD,ind]=sort(atan2(1./diag(D),0*diag(D)+1));
D=diag(D);
D=D(ind);
V=V(:,ind);
alpha=V\(qr-ql);

figure(2), clf, hold on
x=[-1,1];
t=0.7;
for j=1:dim(1)
    y=D(j)*x;
    plot(x,y,'k');
    text(t/D(j)-0.1,t,num2str(j))
end
xlim([-1,1]);
ylim([0,2]);
text(t/D(j)+0.1,t,num2str(j+1))
xlabel('x')
ylabel('t')
end

