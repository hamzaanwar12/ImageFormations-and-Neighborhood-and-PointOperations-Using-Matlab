function  [medianImage,paddedActualImage]  = applyMedian(ImagePath, filterSize)
       
    InputImage = rgb2gray(imread(ImagePath));
    
    %make thw neww imsge with zer paaing
    difference = floor(filterSize/2);
    %Getting the size
    [rows, columns] = size(InputImage);
    paddedSizeRows = rows + difference;
    paddedSizeCols = columns + difference;
    paddedActualImage = zeros(paddedSizeRows,paddedSizeCols);
     
    for i=difference+1:rows
        for j=difference+1:columns
            paddedActualImage (i,j) = InputImage(i-difference,j-difference);
        end
    end
    
    %ytraversing each pixel tp form the new image
    newImage = zeros(rows,columns);
    for i = 1 : rows-difference
        for j = 1 : columns-difference
            
            subMatrix = paddedActualImage(i:i+filterSize-1, j:j+filterSize-1);
            %disp('Check')
            %disp(subMatrix);

            result = median(subMatrix(:));
            newImage (i,j) = sum(reshape(result,1,[]));
        end
    end

    medianImage = newImage ;
end
