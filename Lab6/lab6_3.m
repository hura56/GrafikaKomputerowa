clear; clc; clf;

img = double(imread("rzeczka_mniejsza.jpg"));

mask = [0 -1 0; -1 5 -1; 0 -1 0];

margines = zeros(size(img,1)+2, size(img,2)+2, 3);
margines(2:end-1, 2:end-1, 1) = img(:,:,1);
margines(2:end-1, 2:end-1, 2) = img(:,:,2);
margines(2:end-1, 2:end-1, 3) = img(:,:,3);


