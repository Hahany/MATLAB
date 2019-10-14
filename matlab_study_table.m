Gender = {'M';'F';'M';'M';'F'};
Age = [23;24;23;22;21];
Grades = [78,86,80;45,87,89;90,98,99;97,90,89;87,88,96];
Leader = logical([0;1;0;1;0]);
ID = strcat('2019C',['001';'002';'003';'004';'005']);
T1 = table(ID,Gender,Age,Grades,Leader,'RowNames',{'carry','niss','baken','dage','kaen'})

T1('carry','ID') %注意索引的时候一定要使用单引号括起来。

h=table2cell(T1)
