function outputImage = applyTransform2(inputImage)
  
     % Apply point operation with transformation function s = r * (2/log(r))
     inputImage = double(inputImage);

    % Get the size of the input image
    [rows, cols] = size(inputImage);

    % Initialize output image
    outputImage = zeros(rows, cols);

    for i = 1:rows
        for j = 1:cols
            r = inputImage(i, j);
            %Applying the function
            outputImage(i, j) = r * (2 / log(r));
        end
    end

end