function [actualImage,imageTransform1,imageTransform2,sharpImage1,sharpImage2,maskImage,NoisyImage,averagedImage,medianImage ]= firstAssignment(imagePath,filterSize)
    %Caliing all the Transformations function here to just store the output as per said in
    %the assignment instructions
    actualImage = rgb2gray(imread(imagePath));
    imageTransform1 = applyTransform1(actualImage);
    imageTransform2 = applyTransform2(actualImage);
    [sharpImage1,sharpImage2,maskImage,NoisyImage] = applyUnsharpMasking(imagePath,filterSize);
    averagedImage = makeAverage(imagePath,filterSize);
    medianImage  = applyMedian(imagePath,filterSize);

end