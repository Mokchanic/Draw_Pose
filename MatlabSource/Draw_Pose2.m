clc, clear, close all
%% Variables
people_num = 1;
all_data = [];

for i = 0:0
    file_name = sprintf('../Data/All_Peddata/%dcomplete.csv', i);
    location_data = readmatrix(file_name);

    all_data = [all_data ; location_data];

end

reshape_location_data = reshape(all_data, 2, []);

%% plot test

% MainCommon
angles = linspace(0, 2*pi, 100);
MainCenterX = 0;
MainCentery = 0;

% CollisionCircle
radiusAgent = 120;
agent_x = radiusAgent * cos(angles) + MainCenterX;
agent_y = radiusAgent * sin(angles) + MainCentery;

plot(agent_x, agent_y, 'k', 'LineWidth', 5);
hold on;

% Draw Pose
reshape_location_data = transpose(reshape_location_data);

a = reshape_location_data(:,1);
b = reshape_location_data(:,2);

plot(a, b, 'o', Color='b');

% xlim([-2000, 2000]);
% ylim([-150, 150]);