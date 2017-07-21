function [ result ] = simulate_slice( source, wavelength_in_voxels, X,Y,Z )
%SIMULATE_SLICE Summary of this function goes here
%   Detailed explanation goes here
    Nx = length(X);
    Ny = length(Y);
    Nz = length(Z);
    result = zeros(Nx,Ny,Nz);
    for a = 1:Nx
        for b = 1:Ny
            for c = 1:Nz
                result(a,b,c)= point_projection(source,[X(a) Y(b) Z(c)], wavelength_in_voxels);
            end
        end
    end
    result = result/max(max(abs(result)));
end

