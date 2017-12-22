% Secant Method
clc
clear
fun='x^2-2';
xnold=0.5;
xn=1;
Es=0.5;
i=0;
Ea=200*Es;
x=xn;
yn=eval(fun);
x=xnold;
ynold=eval(fun);
while Ea>Es
    xr=xn-((yn*(xn-xnold))/(yn-ynold));
    i=i+1;
    Ea=abs((xr-xn)/xr)*100;
    xnold=xn;
    xn=xr;
    x=xn;
    yn=eval(fun);
    x=xnold;
    ynold=eval(fun);
end
disp(xr)
disp(i)
    