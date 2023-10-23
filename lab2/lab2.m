img_uint8 = imread('plaza1.png');
#imshow(img_uint8);
### ZADANIE 1 ###
img_dbl = double(img_uint8);
img_cp = img_dbl;
img_cp(:,:,1) = img_dbl(:,:,3);
img_cp(:,:,3) = img_dbl(:,:,1);
#subplot(1,2,1);
#imshow(img_dbl/255);
#title('Przed zmiana');
#subplot(1,2,2);
#imshow(img_cp/255);
#title('Po zmianie');
### ZADANIE 2 ###
#Zamiana obrazka na wektor
img_vec = reshape(img_dbl,[],3);
#Histogram wszystkich wartoœci
#subplot(2,2,1);
#hist(img_vec(:), 100);
#title('Histogram wszystkich wartoœci');
###Czerwony
#subplot(2,2,2);
#hist(img_vec(:, 1), 100);
#title('R');
###Zielony
#subplot(2,2,3);
#hist(img_vec(:, 2), 100);
#title('G');
###Niebieski
#subplot(2,2,4);
#hist(img_vec(:, 3), 100);
#title('B');
### ZADANIE 3 ###
#Skalowanie histogramu
#min_value = min(img_dbl(:));
#max_value = max(img_dbl(:));
#img_norm = (img_dbl - min_value) / (max_value - min_value) * 255;
#subplot(1,2,1);
#imshow(img_dbl/255);
#title('Org');
#subplot(1,2,2);
#imshow(img_norm/255);
#title('zmieniony');
img_vec2 = reshape(img_norm,[],3);
#Histogram wszystkich wartoœci
#subplot(2,2,1);
#hist(img_vec2(:), 100);
#title('Histogram wszystkich wartoœci');
###Czerwony
#subplot(2,2,2);
#hist(img_vec2(:, 1), 100);
#title('R');
###Zielony
#subplot(2,2,3);
#hist(img_vec2(:, 2), 100);
#title('G');
###Niebieski
#subplot(2,2,4);
#hist(img_vec2(:, 3), 100);
#title('B');
### ZADANIE 4 ###
#stworzenie kopii obrazka
img_cp2 = img_dbl;
#R
Rmin_value = min(img_dbl(:,:,1)(:));
Rmax_value = max(img_dbl(:,:,1)(:));
img_cp2(:,:,1) = (img_cp2(:,:,1)-Rmin_value)/(Rmax_value-Rmin_value)*255;
#G
Gmin_value = min(img_dbl(:,:,2)(:));
Gmax_value = max(img_dbl(:,:,2)(:));
img_cp2(:,:,2) = (img_cp2(:,:,2)-Gmin_value)/(Gmax_value-Gmin_value)*255;
#B
Bmin_value = min(img_dbl(:,:,3)(:));
Bmax_value = max(img_dbl(:,:,3)(:));
img_cp2(:,:,3) = (img_cp2(:,:,3)-Bmin_value)/(Bmax_value-Bmin_value)*255;
subplot(1,2,1);
imshow(img_dbl/255);
title('org');
subplot(1,2,2);
imshow(img_cp2/255);
title('zmieniony');