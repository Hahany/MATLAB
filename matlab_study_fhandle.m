clear
% h=@sin
% h(pi)
% y = logspace(0,5,6)
% x = linspace(3,-2,11)
% p1 = poly2sym([2,3,4])
% p2 = poly2sym([1,2])
a = input('请输入底数a(a>0,a≠1');
x = input('请输入指数x:');
if a<=0 || any(x<=0)
       error('底数a和指数x必须大于0')
end 
switch a 
    case 1
        disp('底数不能为1')
        return 
    case {2,10}
        y = eval(['log',int2str(a),'(x)']) %eval 的意思就是将括号里面的字符串按照MATLAB命令行执行，主要用于程序的循环控制
    case exp(1) %exp就是自然底数e，exp(x)就是自然底数e的x次方
    otherwise
        y = log(x)/log(a);
end 
fprintf('log(%g,%g)=%g\n',[a*ones(size(x(:))),x(:),y(:)].') % size 获取矩阵的行数和列数; 注意：：：格式输出的代码形式，
%g 对应的变量，只有一边又引号，只有右边有“'”，如果加了两个引号将会当做字符处理，将每一个字符的asii值付给占位符。
% 矩阵右下角的点可能是数组运算
        