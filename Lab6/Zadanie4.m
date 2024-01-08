clear; clf;

img = double(imread("rzeczka_mniejsza.jpg"));

img_gray = mean(img,3);

mask = [ 0 0 0 ; -1 0 1 ; 0 0 0 ];

margines(1:size(img_gray,1)+2, 1:size(img_gray,2)+2) = 0;
margines(2:end-1, 2:end-1) = img_gray(:,:,1);

margines(1, 2:end-1) = img_gray(1,1:end);
margines(end, 2:end-1) = img_gray(end,1:end);

margines(:,1) = margines(:,2);
margines(:,end) = margines(:,end-1);


for i = 1:size(img,1)
  for j = 1:size(img,2)
    output(i,j) = sum((margines(i:i+2,j:j+2) .* mask)(:));
  endfor
endfor

imshow(output/255);
