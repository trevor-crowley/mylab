
function [z, c, z0] = mandel_fi(centre,width,grid,depth, T) %#codegen

    x = linspace(real(centre)-(width/2),real(centre)+(width/2),grid);
    y = linspace(imag(centre)-(width/2),imag(centre)+(width/2),grid)';

    n = uint16(length(x));
    e = ones(n,1);

    % setup 2D complex initial mesh
    z0 = cast(x(e,:) + 1i*y(:,e), 'like', T.x);

    % working complex plane
    z = cast(zeros(n,n), 'like', z0);
    % working escape count
    c = zeros(n,n, 'uint16');

    % generate mandelbrot set 
    for k = 0:depth
        %mandelbrot formula (2D grid)
        z(:) = z.^2 + z0;
        %set escape count
        c(abs(z) < 2) = k;
    end
end

%%
%     % create image, mapping escape count grid to colour map
%      image(c)
%      axis image
%      colormap(flipud(jet(depth)))


% mandel_test(-.7700-.1300i,0.1,2048,512)
