function averagedImage = applyAveraging(ImagePath, filterSize)
    

    InpImage = rgb2gray(imread(ImagePath));
    myFilter = ones(filterSize,filterSize)/(filterSize*filterSize);    

    [rows, columns] = size(InpImage);
    newImage = zeros(rows,columns);

    %disp(myFilter);
    %disp(newImage);

    ShapeX = floor(filterSize / 2);
    ShapeY = ShapeX;

    disp("ShapeX")
    disp(ShapeX)
    disp("ShapeY")
    disp(ShapeY)

    for i = ShapeX+1 :rows - ShapeX
        disp("Entered")
        for j = ShapeY+1 :columns - ShapeY
            disp("Check");
            subMatrix = InpImage(i-ShapeX:i+ShapeX,j-ShapeY:j+ShapeY);
            disp(subMatrix);
            result = double(subMatrix).*myFilter;
            newImage (i,j) = sum(reshape(result,1,[]));
            %disp(newImage(i,j));
        
        end
    end

    averagedImage = newImage ;
end

