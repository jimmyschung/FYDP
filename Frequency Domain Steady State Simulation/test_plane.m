clear all
Nx = 100;
Ny = 100;
wavelength_in_voxel = 1.5;
plane = plane_array(Nx,Ny);
plane = focus_array(plane,[50,50,50],wavelength_in_voxel);
source = plane_source(plane, Nx,Ny);
figure;
pcolor(source);
results = simulate_slice(source,wavelength_in_voxel,1:100,1:100,50);
figure;
pcolor(20*log10(abs(results)));
figure;
pcolor(angle(results));