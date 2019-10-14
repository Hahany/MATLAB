clear
sum1 = 0;
digits(6);
for i = 1:10000
    sum1 =vpa( sum1 + 1/((2*i-1)*(2*i+1)));
%     fprintf('i is : %d\n',i)
%     fprintf('sum1 is : %d\n',str2double(char(vpa(sum1,6))))
end
sum1