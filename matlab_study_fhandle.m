clear
% h=@sin
% h(pi)
% y = logspace(0,5,6)
% x = linspace(3,-2,11)
% p1 = poly2sym([2,3,4])
% p2 = poly2sym([1,2])
a = input('���������a(a>0,a��1');
x = input('������ָ��x:');
if a<=0 || any(x<=0)
       error('����a��ָ��x�������0')
end 
switch a 
    case 1
        disp('��������Ϊ1')
        return 
    case {2,10}
        y = eval(['log',int2str(a),'(x)']) %eval ����˼���ǽ�����������ַ�������MATLAB������ִ�У���Ҫ���ڳ����ѭ������
    case exp(1) %exp������Ȼ����e��exp(x)������Ȼ����e��x�η�
    otherwise
        y = log(x)/log(a);
end 
fprintf('log(%g,%g)=%g\n',[a*ones(size(x(:))),x(:),y(:)].') % size ��ȡ���������������; ע�⣺������ʽ����Ĵ�����ʽ��
%g ��Ӧ�ı�����ֻ��һ�������ţ�ֻ���ұ��С�'������������������Ž��ᵱ���ַ�������ÿһ���ַ���asiiֵ����ռλ����
% �������½ǵĵ��������������
        