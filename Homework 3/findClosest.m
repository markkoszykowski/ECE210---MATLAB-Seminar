function [val,index] = findClosest(x, desiredValue)
y = x(:);
a = min(abs(y-desiredValue));
b = find(abs(y-desiredValue)==a);
index = b(1);
val = y(index);
end