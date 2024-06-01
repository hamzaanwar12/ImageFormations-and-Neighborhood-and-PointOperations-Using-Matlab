%%to remove all the previously Existing Variables 
clearvars,clear;

%Declare the filter Size
filterSize = 7;
%Calling the Function firstAssignment() with the required parematers i.e,
%picture path and filterSize

[actualImage,imageTransform1,imageTransform2,sharpImage1,sharpImage2,maskImage,NoisyImage,averagedImage,medianImage ] = firstAssignment("recky.jpg",filterSize);

%Displaying the results in a single figure by showing them side by side

figure
    
    %plotting the original Image
    subplot(3, 3, 1);
    imshow(uint8(actualImage));
    title('Original Image');
    
    %plotting the First Transfrom Image 1
    subplot(3, 3, 2);
    imshow(uint8( imageTransform1));
    title('Transform 1');
    
    %plotting the First Transfrom Image 2
    subplot(3, 3, 3);
    imshow(uint8(imageTransform2));
    title('Transform 2');

    %plotting the MAsked Image
    subplot(3, 3, 4);
    imshow(uint8( maskImage));
    title('Mask Image');

    %plotting the Image Sharpen with Scale 1 
    subplot(3, 3, 5);
    imshow(uint8( sharpImage1));
    title('Sharp Image_K1');

    %plotting the Image Sharpen with Scale 5
    subplot(3, 3, 6);
    imshow(uint8(sharpImage2));
    title('Sharp Image_K5');

    %plotting the Salt and pepper Noisy Image
    subplot(3, 3, 7);
    imshow(uint8(NoisyImage));
    title('Noisy Image');
    
    %Plotting the Averaged Image
    subplot(3, 3, 8);
    imshow(uint8(averagedImage));
    title('Averaged Image');

    %plotting the Median Image
    subplot(3, 3, 9);
    imshow(uint8(medianImage));
    title('Median Image');

    %Now Writing these images to save them 
    %1
    imwrite(uint8(actualImage), 'original_image.jpg');
    %2
    imwrite(uint8(imageTransform1), 'transform1_image.jpg');
    %3
    imwrite(uint8(imageTransform2), 'transform2_image.jpg');
    %4
    imwrite(uint8(maskImage), 'mask_image .jpg');
    %5
    imwrite(uint8(sharpImage1), 'sharp_image_k1.jpg');
    %6
    imwrite(uint8(sharpImage2), 'sharp_image_k5.jpg');
    %7
    imwrite(uint8(NoisyImage), 'noisy_image.jpg');
    %8
    imwrite(uint8(averagedImage), 'averaging_image.jpg');
    %9
    imwrite(uint8(medianImage), 'median_image.jpg');

