I = imread('catto.jpg');  % baca citra 
figure;imshow(I); title('Citra asli'); 
 
% Kaburkan citra 
LEN = 15;  % Panjang blur 
TETHA = 5; % sudut blur  
PSF = fspecial('motion', LEN, TETHA); 
Blurred = imfilter(I, PSF, 'circular','conv');  
figure; imshow(Blurred); title('Citra Blur') 
 
% Restorasi citra dengan penapis Wiener 
wnr1 = deconvwnr(Blurred, PSF); 
figure; imshow(wnr1);  
title('Citra hasil restorasi'); 
 