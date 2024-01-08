clear; clf; clc;

img = double(imread("rzeczka_mniejsza.jpg"));
img_gray = 0.2126 * img(:,:,1) + 0.7152 * img(:,:,2) + 0.0722 * img(:,:,3);


mask = [ 5 6 5 ; 6 6 6 ; 5 6 5 ];
normalize = sum(mask(:));
mask /= normalize;


margines_gray = zeros(size(img_gray,1)+2, size(img_gray,2)+2);
margines_gray(2:end-1, 2:end-1) = img_gray(:,:,1);

margines_gray(1, 2:end-1) = img_gray(1,1:end);
margines_gray(end, 2:end-1) = img_gray(end,1:end);

margines_gray(:,1) = margines_gray(:,2);
margines_gray(:,end) = margines_gray(:,end-1);


margines_rgb = zeros(size(img,1)+2, size(img,2)+2, 3);
margines_rgb(2:end-1, 2:end-1, 1) = img(:,:,1);
margines_rgb(2:end-1, 2:end-1, 2) = img(:,:,2);
margines_rgb(2:end-1, 2:end-1, 3) = img(:,:,3);

margines_rgb(1, 2:end-1,1) = img(1,1:end,1);
margines_rgb(end, 2:end-1,1) = img(end,1:end,1);
margines_rgb(1, 2:end-1,2) = img(1,1:end,2);
margines_rgb(end, 2:end-1,2) = img(end,1:end,2);
margines_rgb(1, 2:end-1,3) = img(1,1:end,3);
margines_rgb(end, 2:end-1,3) = img(end,1:end,3);

margines_rgb(:,1,1) = margines_rgb(:,2,1);
margines_rgb(:,end,1) = margines_rgb(:,end-1,1);
margines_rgb(:,1,2) = margines_rgb(:,2,2);
margines_rgb(:,end,2) = margines_rgb(:,end-1,2);
margines_rgb(:,1,3) = margines_rgb(:,2,3);
margines_rgb(:,end,3) = margines_rgb(:,end-1,3);


for i = 1:size(img,1)
  for j = 1:size(img,2)
    output_gray(i,j) = sum((margines_gray(i:i+2,j:j+2) .* mask)(:));
    output_rgb(i,j,1) = sum((margines_rgb(i:i+2,j:j+2,1) .* mask)(:));
    output_rgb(i,j,2) = sum((margines_rgb(i:i+2,j:j+2,2) .* mask)(:));
    output_rgb(i,j,3) = sum((margines_rgb(i:i+2,j:j+2,3) .* mask)(:));
  endfor
endfor

imshow(output_gray/255);
figure;
imshow(output_rgb/255);
mask
