function [ source ] = disc_array( discs,Nx,Ny )
%DISC Summary of this function goes here
%   Detailed explanation goes here
    source = NaN*ones(Nx,Ny);
    Ndisc = length(discs);
    for n = 1:Ndisc
        for i = discs{n}.centre(1)-discs{n}.radius:discs{n}.centre(1)+discs{n}.radius
            for j = discs{n}.centre(2)-discs{n}.radius:discs{n}.centre(2)+discs{n}.radius
                radius2 = discs{n}.radius^2;
                if ( (i-discs{n}.centre(1))^2 + (j-discs{n}.centre(2))^2 <= radius2)
                    source(i,j) = discs{n}.phase;
                end
            end
        end
    end
end

