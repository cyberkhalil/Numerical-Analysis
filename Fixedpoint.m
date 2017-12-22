%Fixed-Point method
clc
clear

gx=input('Write the Fuction g(x) (Use x as unknown)x^2-2     ','s');
Es=input('The tolerance 0.1    ');
x=input('The initial guess -2///1     ');
Ea=input('randomly large relative approximate error 1000     ');
xold = x;   
i = 1;      %iteration counter
while Ea > Es
    x=eval(gx);
    Ea = abs((x-xold)/x)*100;
    xold = x;
    i = i + 1;
end

fprintf('The root equal %6.2f \n',x)
fprintf('Number of iterations %6.0f \n',i)