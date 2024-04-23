function hist = histograma(im)

hist = zeros(1, 256);
[row, col] = size(im);

for i = 1 : row
    for j = 1 : col
        hist(im(i,j) + 1) = hist(im(i,j) + 1) + 1;
    end
end