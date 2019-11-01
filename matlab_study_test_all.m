% ≤‚ ‘largrange≤Â÷µ∑®£¨ªÊ÷∆ÕºœÒ
x = 1:5;
y = [3.6,1.8,1.2,0.9,0.72];
xi = 2.5;
yi=largrange_insert(x,y,xi)
plot(x,y,'r',xi,yi,'rs')
hold on 
% newton≤Â÷µ≤‚ ‘
for xi = 1:0.1:5
    Newton_insert(x,y,xi)
    hold on
end

