
cartXoffset = 0.3245046418497685;
cartYoffset = + 0.04855101129280834;
depth = 256;

zoom_factor = 1; %0.01;

[z, c, z0] = video_mapping(cartXoffset, cartYoffset, zoom_factor, 800, 600, 256);

colormap(flipud(jet(256)))

image(c);

