clear; clf; clc;

img = double(imread("rzeczka_mniejsza.jpg"));

mask = [ 0 -1 0 ; -1 5 -1 ; 0 -1 0 ];


margines = zeros(size(img,1)+2, size(img,2)+2, 3);
margines(2:end-1, 2:end-1, 1) = img(:,:,1);
margines(2:end-1, 2:end-1, 2) = img(:,:,2);
margines(2:end-1, 2:end-1, 3) = img(:,:,3);

margines(1, 2:end-1,1) = img(1,1:end,1);
margines(end, 2:end-1,1) = img(end,1:end,1);
margines(1, 2:end-1,2) = img(1,1:end,2);
margines(end, 2:end-1,2) = img(end,1:end,2);
margines(1, 2:end-1,3) = img(1,1:end,3);
margines(end, 2:end-1,3) = img(end,1:end,3);

margines(:,1,1) = margines(:,2,1);
margines(:,end,1) = margines(:,end-1,1);
margines(:,1,2) = margines(:,2,2);
margines(:,end,2) = margines(:,end-1,2);
margines(:,1,3) = margines(:,2,3);
margines(:,end,3) = margines(:,end-1,3);


for i = 1:size(img,1)
  for j = 1:size(img,2)
    output(i,j,1) = sum((margines(i:i+2,j:j+2,1) .* mask)(:));
    output(i,j,2) = sum((margines(i:i+2,j:j+2,2) .* mask)(:));
    output(i,j,3) = sum((margines(i:i+2,j:j+2,3) .* mask)(:));
  endfor
endfor

output(output>255) = 255;
output(output<0) = 0;

imshow(output/255);
