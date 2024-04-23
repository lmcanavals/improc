function out = laplaciano(im)

mask = [0 1 0; 1 -4 1; 0 1 0];

im = double(im);
temp = filtering(im, mask);
aux = uint8(temp);
out = im - aux;

out = out - min(min(out));
out = 255*(out/max(max(out)));