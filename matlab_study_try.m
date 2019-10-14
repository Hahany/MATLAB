x=randperm(36);
a=reshape(x,4,[]);
try
    deta=det(a);
catch me
    disp(me.message)  %
    b=reshape(x,6,[]);
    detb=det(b)
end

