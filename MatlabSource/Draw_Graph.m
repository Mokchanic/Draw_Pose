clc, clear, close all

%% Data Process
file_name = '7m_ped20.csv';
file_path = sprintf('../Data/Overlap_Data/Overlap_%s',file_name);
overlap_data = readcell(file_path);

data_processing = [overlap_data(2,:); overlap_data(3,:); overlap_data(4,:)];
data_processing_transpose = transpose(data_processing);

% X = categorical(["0 ~ 15" "15 ~ 30" "30 ~ 45" "45 ~ 60" "60 ~ 75" "75 ~ 90" "90 ~ 105" "105 ~ 120" "120 ~ 135" "135 ~ 150" "150 ~ 165" "165 ~ 180" ...
%     "180 ~ 195" "195 ~ 210" "210 ~ 225" "225 ~ 240" "240 ~ 255" "255 ~ 270" "270 ~ 285" "285 ~ 300" "300 ~ 315" "315 ~ 330" "330 ~ 345" "345 ~ 360"]);

X = categorical(overlap_data(1,:));
Y = cell2mat(data_processing_transpose);

%% bar plot
b = bar(X, Y, 1);

barLegend = ["r = 55.5 ~ 77", "r = 77 ~ 98.5", "r = 98.5 ~ 120"];

legend(barLegend)
axis equal
grid on
grid minor
