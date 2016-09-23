function [ derivative_arr ] = SecondDerivative( xvals,tvals )
    derivative_arr=FirstDerivative(FirstDerivative(xvals,tvals),tvals);
end

