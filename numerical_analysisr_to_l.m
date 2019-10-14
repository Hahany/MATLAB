clear 
sum2 = 0;
digits(6);
for i = 10000:-1:1
    sum2 = vpa(sum2 + 1/((2*i-1)*(2*i+1)));
%     fprintf('i is : %d\n',i)
%     fprintf('sum is : %d\n',sum)
end
sum2