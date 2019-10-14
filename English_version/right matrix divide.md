What does A/B mean in MATLAB, when B is a row vector?
=====
When you write 'help /' in matlab, it will tell you that A/B equals to A*INV(B). <br>
But what will happen if B is not a squar matrix, but a row vector?<br>
If you think B is row vector, so we can not get the invers of B. <br>
But when try it in matlab, and input these:<br>
  A = [1,0,0;0,1,0;0,0,1]<br>
  B = [1,2,3]<br>
  A/B<br>
You will find matlab gives you an answer:<br>
ans =<br>

    0.0714
    0.1429
    0.2143
So what?<br>

A/B, when B is a row vector, eaquals (A*B')/dot(B,B)<br>
Does that look familiar? <br>
<div align=center>
![数学公式](https://github.com/Hahany/MATLAB/blob/master/CodeCogsEqn.gif)
<\div>
