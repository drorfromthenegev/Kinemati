function [ isValid ] = ValidateData( xvals,tvals )
    isValid=true;
    %There should be a 1:1 function between the time values and the x
    %values.
    if(size(tvals)~=size(xvals))
        isValid=false;
    end
    %Time values MUST be unique.
    if(tvals~=unique(tvals))
        isValid=false;
    end


end

