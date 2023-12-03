clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
img1 = img;
img2 = img;
img2 = img2(:,end:-1:1,:);
img_out = [img1,img2];
imshow(img_out/255);
