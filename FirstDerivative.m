function [ derivative_arr ] = FirstDerivative( xvals,tvals )
    derivative_arr=diff(xvals)/diff(tvals);
end
