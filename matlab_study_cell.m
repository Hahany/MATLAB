c1 = {'matlab',magic(3);complex(2,3),{'one';1}}
c1(2,2)
c1{2,2}
% 元胞数组使用小括弧访问当中的数组时，返回的是元胞。使用花括弧时返回的是元胞中的值
iscell c1  %判断c1 是否是元胞数组


% 元胞数组相当于可以存放各种数据类型的特殊数组
