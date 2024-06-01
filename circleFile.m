
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
