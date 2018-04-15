clc;
clear;
%Negative examples
negative_data = zeros(9,8);    
 for i = 1:8
     negative_data(i+1,i) = 1;
 end
 negative_data = [negative_data;not(negative_data)];
 negative_data = [negative_data,zeros(18,1)];
 
%Positive examples
%Horizontal data
hor_training_data = [[
    1 1 1 1 1 0 0 0,1;
    1 1 1 1 0 0 0 0,1;
    1 1 1 0 1 0 0 0,1;
    1 1 1 0 0 0 0 0,1;
    %%%%%%%%%%%%%%%%%
    0 0 0 1 1 1 1 1,1;
    0 0 0 1 0 1 1 1,1;
    0 0 0 0 1 1 1 1,1;
    0 0 0 0 0 1 1 1,1;
    %%%%%%%%%%%%%%%%%
    0 0 1 1 1 1 1 1,1;
    1 0 0 1 1 1 1 1,1;
    1 1 1 1 1 0 0 1,1;
    1 1 1 1 1 1 0 0,1;
    %%%%%%%%%%%%%%%%%
    0 0 1 0 1 1 1 1,1;
    1 0 0 1 0 1 1 1,1;
    1 1 1 0 1 0 0 1,1;
    1 1 1 1 0 1 0 0,1
    ];negative_data];

%Vertical data
ver_training_data = [[
    0 1 1 0 1 0 1 1,1;
    0 0 1 0 1 0 1 1,1;
    0 1 1 0 1 0 0 1,1;
    0 0 1 0 1 0 0 1,1;
    %%%%%%%%%%%%%%%%%
    1 1 0 1 0 1 1 0,1;
    1 0 0 1 0 1 1 0,1;
    1 1 0 1 0 1 0 0,1;
    1 0 0 1 0 1 0 0,1;
    %%%%%%%%%%%%%%%%%
    0 1 1 0 1 1 1 1,1;
    1 1 1 0 1 0 1 1,1;
    1 1 0 1 0 1 1 1,1;
    1 1 1 1 0 1 1 0,1;
    %%%%%%%%%%%%%%%%%
    0 0 1 0 1 1 1 1,1;
    1 1 1 0 1 0 0 1,1;
    1 0 0 1 0 1 1 1,1;
    1 1 1 1 0 1 0 0,1
    ];negative_data];


 
 
