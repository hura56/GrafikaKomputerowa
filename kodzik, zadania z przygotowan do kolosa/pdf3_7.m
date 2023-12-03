clear;
clc;
clf;
img = double(imread('rzeczka2.png'));
%czerwony
LUT_R = (0:255);
%zielony
LUT_G = (0:255);
%niebieski
LUT_B = (0:255);
for i = 0:60
  LUT_R(i+1) = i*2;
endfor
for i = 61:110
  LUT_R(i+1) = LUT_R(i)-0.2;
endfor
for i = 111:255
  LUT_R(i+1) = i+1;
endfor
for i = 0:255
  LUT_G(i+1) = i+1;
endfor
for i = 0:50
  LUT_B(i+1) = 0;
endfor
for i = 51:255
  LUT_B(i+1) = (i-50)*1.25;
endfor
%figure;
%hold on;
%plot(0:255, LUT_R, 'color', 'r');
%plot(0:255, LUT_G, 'r--', 'color', 'g');
%plot(0:255, LUT_B, 'color','b');

img_out = img;
%zastosowanie LUT do kazdego koloru osobno i przycinanie w.
%R
img_out(:,:,1) = LUT_R(img_out(:,:,1)+1);

%G
img_out(:,:,2) = LUT_G(img_out(:,:,2)+1);

%B
img_out(:,:,3) = LUT_B(img_out(:,:,3)+1);


imshow(img/255);
title('org img');
figure;
imshow(img_out/255);
title('dziwna transformacja');
