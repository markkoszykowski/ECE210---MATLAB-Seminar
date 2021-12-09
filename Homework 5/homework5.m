%% Homework 5 ECE210 Mark Koszykowski

clc
clear
close all
%% 1

load fisheriris;

flowercellArray = cell(150, 1);
for i = 1:150
    flowercellArray{i, 1} = Flower(meas(i,1), meas(i,2), meas(i,3), meas(i,4), deblank(species{i}));
end

temp = getSWidth(flowercellArray{30, 1});
if(temp == meas(30, 3))
    fprintf('The same! \n');
else
    fprintf('Not the same! \n');
end

report(flowercellArray{30, 1});