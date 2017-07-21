close all
clear all
length_per_voxel_cm = 0.05;
wavelength_in_voxel = 0.82;
[discs, Nx, Ny] = linear_array(10,2,[7,7]);
source = disc_array(discs,Nx,Ny);
%no phase shift
results = simulate_slice(source,wavelength_in_voxel,1:Nx,1:Ny,round(Ny/2));
figure;
pcolor(20*log10(abs(results)));
title('magnitude - 0 phase delay')
figure;
pcolor(angle(results));
title('phase - 0 phase delay')
%focused at centre
discs = focus_array(discs,[77,77,77],wavelength_in_voxel);
source = disc_array(discs,Nx,Ny);
results = simulate_slice(source,wavelength_in_voxel,1:Nx,1:Ny,77);
figure;
pcolor(20*log10(abs(results)));
title('XY magnitude - focused at 77 77 77')
figure;
pcolor(angle(results));
title('XY phase - focused at 77 77 77')
results = simulate_slice(source,wavelength_in_voxel,1:Nx,77,1:Nx);
results = permute(results,[1,3,2]);
figure;
pcolor(20*log10(abs(results)));
title('XZ magnitude - focused at 77 77 77')
figure;
pcolor(angle(results));
title('XZ phase - focused at 77 77 77')