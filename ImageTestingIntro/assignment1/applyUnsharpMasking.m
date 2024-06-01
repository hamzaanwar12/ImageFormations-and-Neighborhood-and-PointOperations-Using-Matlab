function [outputImage1,outputImage2,maskedImage,noisyImage] = applyUnsharpMasking(imagePath,filterSize)
   
    inputImage = double(rgb2gray(imread(imagePath)));
    %Averaging Filter also makes the image blur so using it to blur the
    %Image
    blurredImage = makeAverage(imagePath,filterSize+4);
    %Subtracting the blurriness from actual image to get the masked IMaged
    mask = inputImage - blurredImage;
    
    %Now sharpening the image by using its mask from scale 1 upto scale 5
    outputImage1 = inputImage + (1*mask);
    outputImage2 = inputImage + (5*mask);
    maskedImage  = mask;
    
    %Producing the salt and pepper noise in the image
    noisyImage = imnoise(uint8(outputImage2),"salt & pepper");
    %noisyImage = inputImage;
end