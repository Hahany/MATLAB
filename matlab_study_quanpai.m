% tic
% P = perms(1:9);
% for k = 1:size(P,1)
%     if P(k,7)*100+P(k,8)*10+P(k,9)==3*(P(k,1)*100+P(k,2)*10+P(k,3)) && P(k,4)*100+P(k,5)*10+P(k,6)==2*(P(k,1)*100+P(k,2)*10+P(k,3))
%         fprintf('%d=3*%d','%d=2*%d.\n',P(k,7)*100+P(k,8)*10+P(k,9),P(k,1)*100+P(k,2)*10+P(k,3),P(k,4)*100+P(k,5)*10+P(k,6))
%     end
% end
% toc

m='123'-'0'  %快速取出数字的单个字符的方法,实际上是一种字符转化成ascii码后进行运算