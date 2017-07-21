function [ vector_sum ] = point_projection( source, point, wavelength_in_voxels )
    Nn = size(source);
    Nx = Nn(1);
    Ny = Nn(2);
    x_distance = (((1:Nx)-point(1)).^2)'*ones(1,Ny);
    y_distance = ones(1,Nx)'*(((1:Ny)-point(2)).^2);
    z_distance = point(3)^2*ones(Nx,Ny);
    total_distance = sqrt(x_distance+y_distance+z_distance);
    total_phase = source-total_distance/wavelength_in_voxels*2*pi;
    vector_sum = 0;
    for a = 1:Nx
        for b = 1:Ny
            if(~isnan(total_phase(a,b)))
                vector_sum = vector_sum + exp(i*total_phase(a,b));
            end
        end
    end
end

