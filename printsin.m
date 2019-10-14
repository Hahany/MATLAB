function  printsin(c)
%用符号绘制正弦图像
if nargin ==0
    c='*';
end
for y = linspace(1,-1,21)
    d = round(asind(y)/6);%sin表示弧度制，sind表示弧度制，asin表示弧度的正弦反函数，asind表示角度的正弦反函数
    for j = 0:60 %角度除以6， 对应的圆周角也除以6
        if j==d || j==60+d || j==30-d
            fprintf(c);
        else
            fprintf(' ')
        end
    end
    fprintf('\n')  %注意：/n 和 \n的区别
end

