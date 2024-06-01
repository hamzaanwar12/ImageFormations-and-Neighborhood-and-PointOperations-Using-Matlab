clearvars,close;

rows  = 500;
columns = 500;

A = zeros(rows,columns);
Cx = uint8(rows/2) ; 
Cy = uint8(rows/2) ;
Crad  = 65;

for i = 1:rows
    for j = 1:columns
        checkLocation = sqrt((i - double(Cx))^2 +(j - double(Cy))^2);
        if(checkLocation==Crad)
             A(i,j) = 1;
        end
    end
end


imshow(A);
%clearvars

%%
 circleFormula = @(p,q,x,y) (sqrt((p-q)^2 + (x-y)^2));
 squareFormula  = @(p,q,x,y) (max(abs(p-q) , abs(x-y)));
DiamondFormula = @(p,q,x,y) (abs(p-q) + abs(x-y));

A = zeros(500,500);
B = zeros(500,500);
C = zeros(500,500);

A = drawShapes(A,65,circleFormula);
B = drawShapes(A,65,squareFormula);
C = drawShapes(A,65,DiamondFormula);
figure
imshow(A)
%figure
%imshow(B)
figure
imshow(C)

