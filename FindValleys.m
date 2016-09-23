function [ valleys,locs ] = FindValleys( xvals)
    [valleys,locs]=findpeaks(xvals.*-1);
end

