N = input('请输入杨辉三角形的阶数N：');
% x =tril(ones(N))  %tril 生成下三角矩阵
% for i = 3:N
%     for j = 2:i-1
%         x(i,j) = x(i-1,j-1)+x(i-1,j)
%     end
% end

m = fix(log10(nchoosek(N-1,ceil((N-1)/2))))+1; %nchoosek 指从N个当中选取K个样本，不进行排序;
d = ceil((m+3)/2);
x = 1;
% fprintf([blanks(d*(N-1)),'%',int2str(2*d),'d\n'],x)
for k = 2:N 
    fprintf(blanks(d*(N-k)))
    x = [0,x]+[x,0]; %通过迭代就能实现除去左右两端的向量各元素的累加 %这是一个非常好的表达方式
    fprintf(['%',int2str(2*d),'d'],x)  %打印格式控制：['%',int2str(2*d),'d'],%，str，d 表示向量元素为整数型，中间间隔str个空格
    fprintf('\n')
end 
