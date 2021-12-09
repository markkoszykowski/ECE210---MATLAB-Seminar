function [vector2] = orthoProj(array1,vector1)
[numRows,numCols] = size(array1);
vector2 = zeros(numRows,1);
for i=1:numCols
    vector2 = vector2 + (dot(vector1,array1(:,i)) * array1(:,i));
end
end