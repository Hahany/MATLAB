function [yi] = largrange_insert(x,y,xi)
x_n = length(x);
lny = 0;
for i = 1:x_n
    w = 1;      %注意此处的w要重新刷新为1，否则当w计算一次得0后，一直为0.
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
fprintf('largange 方法对函数列插值的xi函数值为：')
yi = lny;
end

