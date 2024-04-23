function out = filtering(im, mask)

[rowMask, colMask] = size(mask);
rowPadding = (rowMask - 1)/2;
colPadding = (colMask - 1)/2;

[row, col] = size(im);

temp = zeros(row + 2*rowPadding, col + 2*colPadding);
temp(rowPadding+1: rowPadding + row, colPadding + 1:colPadding + col) = im;

out = zeros(row + 2*rowPadding, col + 2*colPadding);

for i = rowPadding +1: rowPadding + row
    for j = colPadding + 1 : colPadding + col
        out(i,j) = sum(sum(mask .* temp(i-rowPadding:i+rowPadding, j-colPadding:j+colPadding)));
    end
end

out = out(rowPadding+1:row + rowPadding, colPadding +1:colPadding + col);