% False Position Method
clc
clear
fun='x^3-5';
xl=1.57;
xu=2;
Es=0.01;
%%%%
i=1;
Ea=2*Es;
x=xl;
yl=eval(fun);
x=xu;
yu=eval(fun);
xr=0;
if yl*yu>0 
    disp('Wrong choice Bro')
else
    xr = xu-((yu*(xl-xu))/(yl-yu));
    x=xr;
    yr=eval(fun);
    while Ea > Es
        xrold=xr;
        i=i+1;
   if yl*yr<0 
       xu = xr;
   else
       xl = xr;          
   end
    xr = xu-(yu*(xl-xu)/(yl-yu)); 
    x=xr;
    yr=eval(fun);
   Ea=abs((xr-xrold)/xr)*100;
    end
    fprintf('The root equal %6.5f \n',xr)
    fprintf('Number of iterations %6.0f \n',i)
end