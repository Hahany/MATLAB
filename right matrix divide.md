When you whrite 'help /' in matlab, it will tell you that A/B equals to A*INV(B). 
But what will happen if B is not a squar matrix, but a row vector?
If you think B is row vector, so we can not get the invers of B. So you wont get anything.:
But when try it in matlab, and input these:
  A = [1,0,0;0,1,0;0,0,1]
  B = [1,2,3]
  A/B
You will find matlab gives you an answer:
ans =

    0.0714
    0.1429
    0.2143
So what?

A/B, when B is a row vector, eaquals (A*B')/dot(B,B)
Does that look familiar? 