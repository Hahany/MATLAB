When you whrite 'help /' in matlab, it will tell you that A/B equals to A*INV(B). 
====
But what will happen if B is not a squar matrix, but a row vector?<br>
If you think B is row vector, so we can not get the invers of B. So you wont get anything.:<br>
But when try it in matlab, and input these:<br>
  A = [1,0,0;0,1,0;0,0,1]<br>
  B = [1,2,3]<br>
  A/B<br>
You will find matlab gives you an answer:<br>
ans =<br>

    0.0714<br>
    0.1429<br>
    0.2143<br>
So what?<br>

A/B, when B is a row vector, eaquals (A*B')/dot(B,B)<br>
Does that look familiar? <br>
