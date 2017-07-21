function [ discs,Nx,Ny ] = linear_array( radius, spacing, Num )
%LINEAR_ARRAY Summary of this function goes here
%   Detailed explanation goes here
    Num_x = Num(1);
    Num_y = Num(2);
    n = 0;
    for i = 1:Num_x
        for j = 1:Num_y
            n = n+1;
            d.centre = (2*radius+spacing)*[i-1 j-1]+radius+[1 1];
            d.radius = radius;
            d.phase = 0;
            discs{n} = d;
            if (j == Num_y) && (i == Num_x) 
                Nx = d.centre(1) + radius;
                Ny = d.centre(2) + radius;
            end
        end
    end
end

