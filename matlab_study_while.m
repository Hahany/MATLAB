N = input('������������N��');
if N<=0 || mod(N,1)
    error('N����Ϊ������.')
end
n = 0;
s = [];
while N>=1 
    s=[mod(N,10),s]; %mod ȡ��
    N=floor(N/10); %������Сȡ��
    n=n+1;
end
N1 = wrev(s)*logspace(n-1,0,n).';% logspace ��������������
disp(char(['λ����',int2str(n)],['��λ���֣�',int2str(s)],['��������',int2str(N1)]))