function out = ecualizar_histograma(im)

hist = histograma(im);
[row, col] = size(im);

% Normalizacion
hist = hist/(row * col);

% Computar acumulacion
accum = zeros(1,256);
accum(1) = hist(1);

for i = 2 : 256
    accum(i) = accum(i-1) + hist(i);
end

out = zeros(row, col);

for i = 1 :row
    for j = 1 : col
        out(i,j) = accum(im(i,j)+1);
    end
end

out = floor(255*out + 0.5);