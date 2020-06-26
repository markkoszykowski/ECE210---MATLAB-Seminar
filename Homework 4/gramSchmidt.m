function [array2] = gramSchmidt(array1)
[numRows,numCols] = size(array1);
array2(:,1) = array1(:,1)/norm(array1(:,1));
for i=2:numCols
    tempVec2 = zeros(numRows,1);
    for j=1:i-1
       tempVec1 = (dot(array1(:,i),array2(:,j))/norm(array2(:,j))) * array2(:,j);
       tempVec2 = tempVec2 + tempVec1;
    end
    array2(:,i) = array1(:,i) - tempVec2;
    array2(:,i) = array2(:,i)/norm(array2(:,i));
end
end