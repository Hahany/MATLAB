function [yi] = largrange_insert(x,y,xi)
x_n = length(x);
lny = 0;
for i = 1:x_n
    w = 1;      %ע��˴���wҪ����ˢ��Ϊ1������w����һ�ε�0��һֱΪ0.
    den = 1;
    for j = 1:x_n
        if i ~= j
            w = (xi-x(j))*w;
            den = (x(i)-x(j))*den;
        else 
            continue
        end
    end
    l_ix = w/den;
    lny = lny + y(i)*l_ix;
end 
fprintf('largange �����Ժ����в�ֵ��xi����ֵΪ��')
yi = lny;
end

