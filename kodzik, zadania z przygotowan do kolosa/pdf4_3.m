clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
Y = 0+0.299*R+0.587*G+0.114*B;
CB = 128-0.168736*R-0.331264*G+0.5*B;
CR = 128+0.5*R-0.418688*G-0.081312*B;

imshow(img/255);
title('RGB');
figure;
imshow(Y/255);
title('Y');
figure;
imshow(CB/255);
title('CB');
figure;
imshow(CR/255);
title('CR');
