function out = rgb2gray2(in)

in = double(in);
out = 0.2989 * in(:,:,1) + 0.5870 * in(:,:,2) + 0.1140 * in(:,:,3);