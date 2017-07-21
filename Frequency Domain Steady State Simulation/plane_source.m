function [ source ] = plane_source( plane, Nx, Ny )
%PLANE_SOURCE Summary of this function goes here
%   Detailed explanation goes here
    source = zeros(Nx,Ny);
    n = 0;
    for i = 1:Nx
        for j = 1:Ny
            n = n+1;
            source(i,j) = plane{n}.phase;
        end
    end
end

