function out = filtro_orden_estadistico(im, rowMask, colMask)

rowPadding = (rowMask - 1)/2;
colPadding = (colMask - 1)/2;

[row, col] = size(im);

temp = zeros(row + 2*rowPadding, col + 2*colPadding);
temp(rowPadding+1: rowPadding + row, colPadding + 1:colPadding + col) = im;

out = zeros(row + 2*rowPadding, col + 2*colPadding);

for i = rowPadding +1: rowPadding + row
    for j = colPadding + 1 : colPadding + col
        aux = temp(i-rowPadding:i+rowPadding, j-colPadding:j+colPadding);
        s = sort(aux(:));
        out(i,j) = s(floor((rowMask*colMask)/2 + 0.5));
    end
end
out = out(rowPadding+1:row + rowPadding, colPadding +1:colPadding + col);