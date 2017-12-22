%Newton-Raphson method
clc
clear
fun='(cos(x))-(x*exp(x))';
der='(-sin(x))-(x*exp(x)+exp(x))';
xi=2;
Es=0.5;
i = 0;
Ea = 200*Es;
while Ea > Es
    x = xi;
    fxi=eval(fun);
    dfxi = eval(der);
    xn = xi- (fxi/dfxi);
    i = i+1;
    Ea = abs((xn-xi)/(xn) *100);
    xi = xn;
end
fprintf ('Result is:\n Root xn = %6.4f\n Number of iteration = %6.0f\n',xn,i);

