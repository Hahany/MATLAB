N = input('��������������εĽ���N��');
% x =tril(ones(N))  %tril ���������Ǿ���
% for i = 3:N
%     for j = 2:i-1
%         x(i,j) = x(i-1,j-1)+x(i-1,j)
%     end
% end

m = fix(log10(nchoosek(N-1,ceil((N-1)/2))))+1; %nchoosek ָ��N������ѡȡK������������������;
d = ceil((m+3)/2);
x = 1;
% fprintf([blanks(d*(N-1)),'%',int2str(2*d),'d\n'],x)
for k = 2:N 
    fprintf(blanks(d*(N-k)))
    x = [0,x]+[x,0]; %ͨ����������ʵ�ֳ�ȥ�������˵�������Ԫ�ص��ۼ� %����һ���ǳ��õı�﷽ʽ
    fprintf(['%',int2str(2*d),'d'],x)  %��ӡ��ʽ���ƣ�['%',int2str(2*d),'d'],%��str��d ��ʾ����Ԫ��Ϊ�����ͣ��м���str���ո�
    fprintf('\n')
end 
