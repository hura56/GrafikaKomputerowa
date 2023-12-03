clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
img1 = img;
img1 = img1(:,1:end/2,:);
img2 = img1(end:-1:1,:,:);
img_out = [img1,img2];
imshow(img_out/255);
