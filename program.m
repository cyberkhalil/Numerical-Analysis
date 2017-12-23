%By : mahmoud khalil
clear
clc
disp('Numerical-Analysis-Program');
fprintf(' 1 for Bisection Method \n 2 for False Position Method \n 3 for Fixed point method \n 4 for Newton method \n 5 for Secant method');
x = input('Enter a number between 1 and 5 : ');
if(x==1)
    disp('You have entered Biscetion methos to go out press ctrl + c');
    f = input('Enter an Equation (Use x as unknown) f(x) = ','s');
    xl = input('x lower = ');
    xu = input('x upper = ');
    disp('(less value better accuracy)');
    acc = input('The error value = ');
    if(xu<xl)
    fprintf('Sorry but your x upper less than x lower .. \n please try again');
    else
        acc = abs(acc);
        err = acc*2;
        while(err>acc)
            i=i+1;
            x=xl;
            fl=eval(f);
            x=xu;
            fu = eval(f);
            xr = (xl+xu)/2;
            x= xr;
            fr = eval(f);
            err = abs(fr);
            if(fr*fl)<0
                xu=xr;
            else
                xl = xr;
            end
        end
    end
    fprintf('\n The Zero (Root) = %5.5f \n ',xr);
    fprintf('Done in %3.0f Itreations \n',i);
else if (x==2)
        disp('You have entered False position method to go out press ctrl + c');
        f = input('Enter an Equation (Use x as unknown) f(x) = ','s');
        xl = input('x lower = ');
        xu = input('x upper = ');
        disp('(less value better accuracy)');
        acc = input('The error value = ');
        if(xu<xl)
            fprintf('Sorry but your x upper less than x lower .. \n please try again');
        else
            acc = abs(acc);
            err = acc*2;
            while(err>acc)
                i=i+1;
                x=xl;
                fl=eval(f);
                x=xu;
                fu = eval(f);
                xr = xu - (fu*(xl-xu)/(fl-fu));
                x= xr;
                fr = eval(f);
                err = abs(fr);
                if(fr*fl)<0
                    xu=xr;
                else
                    xl = xr;
                end
            end
        end
        fprintf('\n The Zero (Root) = %5.5f \n ',xr);
        fprintf('Done in %3.0f Itreations \n',i);
        else if(x==3)
                disp('You have entered Fixed point method to go out press ctrl + c');
                gx = input('Enter the G(x) equation (Use x as unknown) G(x)= ','s');
                x = input('Enter initial value for x , x = ');
                disp('(less value better accuracy)');
                acc = abs(input('The error value = '));
                error = true; % because at first i suppose there is an error
                i = 0;
                err = acc*2;
                while(err>acc)
                    error = false;
                    i = i+1;
                    x = eval(gx);
                    err = abs((eval(gx)-x));
                    if(eval(gx)> x*100 )
                        error = true;
                        break;
                    end 
                end
                if(error)
                    fprintf('Sorry this G(x) is completely diverged ');
                else
                    fprintf('\n The Zero (Root) = %5.5f \n ',eval(gx));
                    fprintf('Done in %3.0f Itreations \n',i);
                end
            else if(x==4)
                    disp('You have entered Newton method to go out press ctrl + c');
                    f = input('Enter an Equation (Use x as unknown) f(x) = ','s');
                    d = input('Enter the drivative of the Equation (Use x as unknown) f''(x) = ','s');
                    x = input('Enter initial x = ');
                    disp('(less value better accuracy)');
                    acc = input('The error value = ');
                    i = 0;
                    err = acc*2;
                    error = true; % because at first i suppose there is an error
                    while(err>acc)
                        i=i+1;
                        fx = eval(f);
                        dx = eval(d);
                        err = abs(eval(f));
                        error = false;
                        x= x-(fx/dx);
                        if(x>(x-(fx/dx))*100)
                            error = true;
                            break;
                        end
                    end
                    if(error)
                        fprintf('Sorry this F(x) is completely diverged ');
                    else
                    fprintf('\n The Zero (Root) = %5.5f \n ',x);
                    fprintf('Done in %3.0f Itreations \n',i);
                    end
            else if(x==5)
                    disp('You have entered Secant method to go out press ctrl + c');
                    f = input('Enter an Equation (Use x as unknown) f(x) = ','s');
                    xold = input('Enter first initial x = ');
                    xnew = input('Enter second initial x = ');
                    disp('(less value better accuracy)');
                    acc = input('The error value = ');
                    i = 0;
                    err = acc*2;
                    error = false; 
                    while(err>acc)
                        i=i+1;
                        x = xold;
                        fxold = eval(f);
                        x = xnew;
                        fxnew = eval(f);
                        x = xnew;
                        xnew = xnew -(fxnew*(xnew-xold)/(fxnew - fxold));
                        xold = x;
                        err = abs(eval(f));
                        error = false;
                        if(abs(fxnew) > abs(fxold *100))
                            error = true;
                            break;
                        end
                    end
                    if(error)
                    fprintf('Sorry this F(x) is completely diverged ');
                    else
                    fprintf('\n The Zero (Root) = %5.5f \n ',x);
                    fprintf('Done in %3.0f Itreations \n',i);
                    end
                end
                end
            end
    end
end
