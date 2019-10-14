N = input('请输入正整数N：');
if N<=0 || mod(N,1)
    error('N必须为正整数.')
end
n = 0;
s = [];
while N>=1 
    s=[mod(N,10),s]; %mod 取余
    N=floor(N/10); %向无穷小取整
    n=n+1;
end
N1 = wrev(s)*logspace(n-1,0,n).';% logspace 定数对数采样，
disp(char(['位数：',int2str(n)],['各位数字：',int2str(s)],['逆序数：',int2str(N1)]))