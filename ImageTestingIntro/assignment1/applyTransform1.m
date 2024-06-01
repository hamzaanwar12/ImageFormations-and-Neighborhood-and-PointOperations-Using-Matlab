function outputImage = applyTransform1(inputImage)

    %Processing cannot be done in image in unit8 format 
    inputImage = double(inputImage);

    % Get the size of the input image
    [rows, cols] = size(inputImage);

    % Initialize output image
    outputImage = zeros(rows, cols);

    % Apply point operation with transformation function s = r + log(r) * 20
    for i = 1:rows
        for j = 1:cols
            r = inputImage(i, j);
            %applying the function
            outputImage(i, j) = r + log(r) * 20;
        end
    end
end