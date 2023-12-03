clear;
clf;
clc;
img = imread('rzeczka.jpg');
img_db = double(img);
R = img_db(:,:,1);
avgR = round(mean(vec(R)));
LUT = zeros(1,256);
LUT(1:avgR) = 0;
LUT(avgR+1:256) = (255/(255-avgR))*((avgR:255)-avgR);
img_out=img_db;
newR = LUT(R+1);
img_out(:,:,1) = newR;
imshow(img_out/255);disp([0:255;LUT])
