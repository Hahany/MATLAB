s=evalin(symengine,'series(exp(asin(x))+log((1-x)/exp(1)),x=0,7)');
fprintf('%s\n','幂级数展开：')
pretty(s)
syms x;
r = taylor(exp(asin(x))+log((1-x)/exp(1)),x,'order',8); %taylor(sin(x),x,pi/2,'Order',6);和旧版的Taylor输入格式不同，注意查看对应版本的help 文件
fprintf('%s\n','taylor展开(符号运算)：')
pretty(r)

% diff(asin(x))%函数的求导