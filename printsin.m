function  printsin(c)
%�÷��Ż�������ͼ��
if nargin ==0
    c='*';
end
for y = linspace(1,-1,21)
    d = round(asind(y)/6);%sin��ʾ�����ƣ�sind��ʾ�����ƣ�asin��ʾ���ȵ����ҷ�������asind��ʾ�Ƕȵ����ҷ�����
    for j = 0:60 %�Ƕȳ���6�� ��Ӧ��Բ�ܽ�Ҳ����6
        if j==d || j==60+d || j==30-d
            fprintf(c);
        else
            fprintf(' ')
        end
    end
    fprintf('\n')  %ע�⣺/n �� \n������
end

