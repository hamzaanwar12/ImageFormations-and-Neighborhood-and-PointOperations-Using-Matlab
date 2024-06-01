image1 = imread("ImageTestingIntro\background.jpg");
%disp(A)

image2 = rgb2gray(image1);

figure
%subplot(2,2,1);
%imshow(image1);

subplot(2,2,1);
imshow(image2)
title("Gray Scale Original")

dullImage = image2 - 10;
moreDull = dullImage/3; 

subplot(2,2,2);
imshow(dullImage);
title("Gray Scale - 10")

subplot(2,2,[3,4]);
imshow(moreDull);
title("(Gray Scale - 10)/3 ")




