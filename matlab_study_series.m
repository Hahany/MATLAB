s=evalin(symengine,'series(exp(asin(x))+log((1-x)/exp(1)),x=0,7)');
fprintf('%s\n','�ݼ���չ����')
pretty(s)
syms x;
r = taylor(exp(asin(x))+log((1-x)/exp(1)),x,'order',8); %taylor(sin(x),x,pi/2,'Order',6);�;ɰ��Taylor�����ʽ��ͬ��ע��鿴��Ӧ�汾��help �ļ�
fprintf('%s\n','taylorչ��(��������)��')
pretty(r)

% diff(asin(x))%��������