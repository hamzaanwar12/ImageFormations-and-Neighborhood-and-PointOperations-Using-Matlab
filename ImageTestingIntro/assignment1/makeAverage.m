function averagedImage = makeAverage(ImagePath, filterSize)
    
    %getting image from the path
    InpImage = rgb2gray(imread(ImagePath));
    %forming the filter on basis of filter Size
    myFilter = ones(filterSize,filterSize)/(filterSize*filterSize);    

    %Getting the Size
    [rows, columns] = size(InpImage);
    %Forming new Image for processed results
    newImage = zeros(rows,columns);

    %disp(myFilter);
    %disp(newImage);

    %Shaping the X and Y limits for traversing
    ShapeX = floor(filterSize / 2);
    ShapeY = ShapeX;

    %disp("ShapeX")
    %disp(ShapeX)
    %disp("ShapeY")
    %disp(ShapeY)

    for i = ShapeX+1 :rows - ShapeX
        %disp("Entered")
        for j = ShapeY+1 :columns - ShapeY
            %disp("Check");
            %making a submatrix 
            subMatrix = InpImage(i-ShapeX:i+ShapeX,j-ShapeY:j+ShapeY);
            %disp(subMatrix);
            %Takinh the average Of Image
            result = double(subMatrix).*myFilter;
            newImage (i,j) = sum(reshape(result,1,[]));
            %disp(newImage(i,j));
        
        end
    end

    averagedImage = newImage;
end
