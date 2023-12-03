clear;
clf;
clc;
img = imread('rzeczka.jpg');
imgdbl = double(img);
LUT = zeros(1,256);
R = imgdbl(:,:,1);
avg = round(mean(vec(R)));
LUT(1:avg) = 0;
LUT(avg+1:256) =  1.6667*((avg:255) - avg);
LUT(LUT>255) = 255;
LUT(LUT<0) = 0;
img_out = imgdbl;
newR = LUT(R+1);
img_out(:,:,1) = newR;
plot([0:255],LUT);
figure;
imshow(img_out/255);disp([0:255;LUT])
