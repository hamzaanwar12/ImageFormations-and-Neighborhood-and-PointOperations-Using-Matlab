
clc,clearvars;
%%
%A = rgb2gray(imread("ImageTestingIntro\noise.jpg"));
C = imread("ImageTestingIntro\noise.jpg");
A = im2gray(C);
D = A(1:4,1:4);
figure

subplot(2,2,1);
imshow(A);
title("Gray Scale Noise Image");

subplot(2,2,2);
imshow(C);
title("Gray Scale Noise Image But Averaged");


%%
C = imread("ImageTestingIntro\noise.jpg");
A = im2gray(C);


Filter  = ones(3,3);
Filter= 1/9 * Filter;
%size of image
[M, N] = size(A);

%Size of Filter
[x, y] = size(Filter);

%Empty Image
AveragedImage = zeros(M,N);
disp(x/2)
disp(uint8(x/2));

rowCheck = double(uint8(x/2));
colCheck = double(uint8(y/2));

%%
for i = rowCheck:1:M-rowCheck

    for j = colCheck:1:N - colCheck
           
        subMtrix = A(i-1:i+1,j-1:j+1);
        result = double(subMtrix).*realFiler;
        newValue = 
        disp("sum = ",sum)
        AveragedImage(i,j) = sum(result,"all");
        disp(sum(subMtrix,"all")/(M * N));

    end

end
%%
figure

subplot(2,2,1);
imshow(A);
title("Gray Scale Noise Image");

subplot(2,2,2);
imshow(uint8(AveragedImage));
title("Gray Scale Noise Image But Averaged");


%subplot(2,2,[3,4]);
%imshow(C);
title("Original One");




