function varargout = averages( varargin )
%���㼸�־�ֵ
% ���������Ρ����͡���ƽ��ƽ��ֵ
%   ��Ҫѧϰ�䳤�ȵı���������
n = nargin;
[An,Gn,Hn,Qn] = deal(0,1,0,0);
for k=1:n
    ak = varargin{k};
    if any(ak)<=0
        error('����Ĳ���������������')
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

