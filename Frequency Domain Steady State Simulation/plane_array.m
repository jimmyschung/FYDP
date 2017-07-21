function [ plane ] = plane_array( Nx, Ny )
%PLANE_DISCS Summary of this function goes here
%   Detailed explanation goes here
    n = 0;
    for i = 1:Nx
        for j = 1:Ny
            n = n+1;
            d.centre = [i, j];
            d.radius = 0;
            d.phase = 0;
            plane{n} = d;
        end
    end
end

