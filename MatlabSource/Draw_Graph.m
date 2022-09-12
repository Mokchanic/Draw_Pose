clc, clear, close all

%% Data Process
file_name = '7m_ped20.csv';
file_path = sprintf('../Data/Overlap_Data/Overlap_%s',file_name);
overlap_data = readcell(file_path);

data_processing = [overlap_data(2,:); overlap_data(3,:); overlap_data(4,:)];
data_processing_transpose = transpose(data_processing);

X = categorical(overlap_data(1,:));
X = reordercats(X, overlap_data(1,:)); % X

Y = cell2mat(data_processing_transpose);

%% bar plot
% b = bar(X, Y, 1);
% hold on;


%% plot
plot(X,Y);
ylim([0,1000]);
hold on;

grid on
grid minor;

% barLegend = ["r = 55.5 ~ 77", "r = 77 ~ 98.5", "r = 98.5 ~ 120"];
barLegend = ["boundary1", "boundary2", "boundary3"];
legend(barLegend)