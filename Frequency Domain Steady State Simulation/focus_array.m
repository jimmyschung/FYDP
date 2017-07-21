function [ discs ] = focus_array( discs, point, wavelength_in_voxels )
%FOCUS_ARRAY Summary of this function goes here
%   Detailed explanation goes here
    delay = zeros(1,length(discs));
    for n = 1:length(discs)
        delay(n) = sqrt(sum((point - [discs{n}.centre 0]).^2));
    end
    [m,i]= min(delay);
    for n = 1:length(discs)
       discs{n}.phase = 2*pi*(delay(n)-m)/wavelength_in_voxels;
    end
end

