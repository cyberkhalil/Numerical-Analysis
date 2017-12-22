%Bisection method
clc
clear
f=input('Write the Fuction (Use x as unknown)     ','s');
a=input('The initial x lower value     ');
b=input('The initial x upper value     ');
acc=input('The accuracy in 1e-7 format     ');
x=a;
yl=eval(f);
x=b;
yu=eval(f);
i=1;
if yl*yu>0 
    disp('Wrong choice Bro')
else
    r = (a+b)/2;
    x=r;
    yr=eval(f);
    err = abs(yr);
    while err > acc
        i=i+1;
   if yl*yr<0 
       b = r;
   else
       a = r;          
   end
    r = (a + b)/2; 
    x=r;
    yr=eval(f);
   err = abs(yr);
    end
    fprintf('The root equal %6.2f \n',r)
    fprintf('Number of iterations %6.0f \n',i)
end