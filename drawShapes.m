function shape = drawShapes(InputArr, Radius, condition, xFactor)
    [rows, columns] = size(InputArr);
    ShapeX = uint8(rows / 2);
    ShapeY = uint8(columns / 2);

    for i = 1:rows
        for j = 1:columns
            %if(xFactor == 1)
                if feval(condition, i, double(ShapeX), j, double(ShapeY)) >= Radius
                    InputArr(i,j) = 1;
                end
            %else
                %if feval(condition, i, double(ShapeX), j, double(ShapeY)) >= Radius
                 %   InputArr(i,j) = 1;
                %end
            %end
        end
    end
    shape = InputArr;
end
