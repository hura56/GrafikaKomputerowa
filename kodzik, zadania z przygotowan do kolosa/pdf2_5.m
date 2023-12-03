clear;
clf;
clc;
img = double(imread('plaza1.png'));

% Oblicz wartości decylowe (1. i 9. decyl)
decile1 = prctile(img(:), 10);
decile9 = prctile(img(:), 90);

% Przeskaluj wartości obrazu do przedziału [0, 255]
img_scaled = 255 * (img - decile1) / (decile9 - decile1);

% Przyciąć wartości mniejsze niż 0 do 0
img_scaled(img_scaled < 0) = 0;

% Przyciąć wartości większe niż 255 do 255
img_scaled(img_scaled > 255) = 255;

% Wyświetl obrazy przed i po przeskalowaniu
subplot(1, 2, 1);
imshow(uint8(img));
title('Original Image');

subplot(1, 2, 2);
imshow(uint8(img_scaled));
title('Scaled Image');

% Wyświetl histogram przed i po przeskalowaniu
figure;
subplot(2, 1, 1);
hist(img(:), 100);
title('Original Image Histogram');

subplot(2, 1, 2);
hist(img_scaled(:), 100);
title('Scaled Image Histogram');

