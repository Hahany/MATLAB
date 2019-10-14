function varargout = averages( varargin )
%计算几种均值
% 算数、几何、调和、及平方平均值
%   主要学习变长度的变量的输入
n = nargin;
[An,Gn,Hn,Qn] = deal(0,1,0,0);
for k=1:n
    ak = varargin{k};
    if any(ak)<=0
        error('输入的参数必须是整数。')
        continue
    end
    An = An + ak;
    Gn = Gn .* ak;
    Hn = Hn + 1./ak;
    Qn = Qn +  ak.^2;
    fprintf('%10i',ak)
end
A = An / n;
G = Gn .^(1/n);
H = n./Hn;
Q = sqrt(Qn/n);
if nargout == 1
    varargout{1}=table(A,G,H,Q,'VariableNames',{'Arithmetic','Geometric','Harmonic','Square'});
else
    [varargout{1:4}] = deal(A,G,H,Q);
end
end

