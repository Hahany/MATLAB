function Newton_insert(x,y,xi)
xn = length(x);
A = zeros(xn,xn-1);
M = [y(:),A];
for i = 2:xn        %i���б�
    for j = i:xn            %j���б�
        M(j,i) = (M(j,i-1)-M(j-1,i-1))/(x(j)-x(j-i+1));
    end
end
p=M(1,1);
m=1;
for k = 1:xn-1
    m=m*(xi-x(k));
    p=p+M(k+1,k+1)*m;
    fprintf('%g��P(%g)��newton��ֵ�ǣ�%g\n',xi,k,p')
    plot(x,y,xi,p,'+')
    hold on
end
end