function [torf] = isOrthonormal(array1)
[numRows,numCols] = size(array1);
torf = 1;
for i=1:numCols-1
    for j=i+1:numCols
        temp = dot(array1(:,i),array1(:,j));
        if temp > 10^3*eps
            torf = 0;
            break
        end
    end
    if temp > 10^3*eps
        break
    end
end
end