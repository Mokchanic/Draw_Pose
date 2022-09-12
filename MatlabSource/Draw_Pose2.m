clc, clear, close all
%% Variables
countMatrix = zeros(300:300);
countSize = size(countMatrix);

file_name = '3m_ped20_3.csv';
file_path = sprintf('../Data/All_Peddata/%s',file_name);
location_data = readmatrix(file_path);
size = size(location_data);

location_data(:, size(2)) = [];

reshape_location_data = reshape(location_data, 2, []);
reshape_location_data = transpose(reshape_location_data); % transpose

moveTo_reshape_location_data = reshape_location_data + 150;

%% plot

% MainCommon
splite_angles = linspace(0, 2*pi, 25);
angles = linspace(0, 2*pi, 100);
MainCenterX = 0;
MainCenterY = 0;

% CollisionCircle
radiusColAgent = 120;
col_agent_x = radiusColAgent * cos(angles) + MainCenterX;
col_agent_y = radiusColAgent * sin(angles) + MainCenterY;

splite_x_Col = transpose(radiusColAgent * cos(splite_angles) + MainCenterX);
splite_y_Col = transpose(radiusColAgent * sin(splite_angles) + MainCenterY);

[BoundaryCol_theta,BoundaryCol_rho] = cart2pol(splite_x_Col,splite_y_Col);

plot(col_agent_x, col_agent_y, 'k', 'LineWidth', 2);
hold on;

% AgentCircle
radiusAgent = 34;
agent_x = radiusAgent * cos(angles) + MainCenterX;
agent_y = radiusAgent * sin(angles) + MainCenterY;

splite_x_Agent = transpose(radiusAgent * cos(splite_angles) + MainCenterX);
splite_y_Agent = transpose(radiusAgent * sin(splite_angles) + MainCenterY);

[Agent_theta,Agent_rho] = cart2pol(splite_x_Agent,splite_y_Agent);

plot(agent_x, agent_y, 'b', 'LineWidth', 5);
hold on;

% % Boundary Circle1
radiusBoundary1 = 55.5;
bound1_x = radiusBoundary1 * cos(angles) + MainCenterX;
bound1_y = radiusBoundary1 * sin(angles) + MainCenterY;

splite_x_Boundary1 = transpose(radiusBoundary1 * cos(splite_angles) + MainCenterX);
splite_y_Boundary1 = transpose(radiusBoundary1 * sin(splite_angles) + MainCenterY);

[Boundary1_theta,Boundary1_rho] = cart2pol(splite_x_Boundary1,splite_y_Boundary1);

plot(bound1_x, bound1_y, 'k', 'LineWidth', 2);
hold on;

% Boundary Circle2
radiusBoundary2 = 77;
bound2_x = radiusBoundary2 * cos(angles) + MainCenterX;
bound2_y = radiusBoundary2 * sin(angles) + MainCenterY;

splite_x_Boundary2 = transpose(radiusBoundary2 * cos(splite_angles) + MainCenterX);
splite_y_Boundary2 = transpose(radiusBoundary2 * sin(splite_angles) + MainCenterY);

[Boundary2_theta,Boundary2_rho] = cart2pol(splite_x_Boundary2,splite_y_Boundary2);

plot(bound2_x, bound2_y, 'k', 'LineWidth', 2);
hold on;

% Boundary Circle3
radiusBoundary3 = 98.5;
bound3_x = radiusBoundary3 * cos(angles) + MainCenterX;
bound3_y = radiusBoundary3 * sin(angles) + MainCenterY;

splite_x_Boundary3 = transpose(radiusBoundary3 * cos(splite_angles) + MainCenterX);
splite_y_Boundary3 = transpose(radiusBoundary3 * sin(splite_angles) + MainCenterY);

[Boundary3_theta,Boundary3_rho] = cart2pol(splite_x_Boundary3,splite_y_Boundary3);

plot(bound3_x, bound3_y, 'k', 'LineWidth', 2);
hold on;

%% Draw Splite Line!
% Splite Line
splite_x = transpose(radiusColAgent * cos(splite_angles) + MainCenterX);
splite_y = transpose(radiusColAgent * sin(splite_angles) + MainCenterY);

zeros = zeros(25,1);

spliteAxis_x = [splite_x, zeros];
spliteAxis_y = [splite_y, zeros];

[spliteLine_theta,spliteLine_rho] = cart2pol(spliteAxis_x,spliteAxis_y);

for i = 1:length(splite_x)
    plot(spliteAxis_x(i,:), spliteAxis_y(i,:), 'k');
    hold on;
end

%% Check Data
[dot_theta, dot_rho] = cart2pol(reshape_location_data(:,1), reshape_location_data(:,2));
AgentBoundary1 = zeros(24);
Boundary1Boundary2 = zeros(24);
Boundary2Boundary3 = zeros(24);
Boundary3ColBoundary = zeros(24);
for repeat_bound = 1:24
    % Check Agent_Boundary & Boundary1
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Agent_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary1_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    AgentBoundary1(repeat_bound) = count;

    % Check Boundary1 & Boundary2
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary1_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary2_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary1Boundary2(repeat_bound) = count;

    % Check Boundary2 & Boundary3
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary2_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary3_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary2Boundary3(repeat_bound) = count;

    % Check Boundary3 & ColBoundary
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary3_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < BoundaryCol_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary3ColBoundary(repeat_bound) = count;
end

totalBoundaryData = [AgentBoundary1, Boundary1Boundary2, Boundary2Boundary3, Boundary3ColBoundary];
MaxTotal = max(totalBoundaryData);

%% fill Draw
% fill Agent Boundary1
% for j = 1:24
%     x = [splite_x_Agent(j), splite_x_Agent(j+1), splite_x_Boundary1(j+1), splite_x_Boundary1(j)];
%     y = [splite_y_Agent(j), splite_y_Agent(j+1), splite_y_Boundary1(j+1), splite_y_Boundary1(j)];
%     normalBound1 = AgentBoundary1 / MaxTotal;
%     fill(x, y, [normalBound1(j) 1 - normalBound1(j) 0])
% end

% fill Boundary1 Boundary2
for k = 1:24
    x = [splite_x_Boundary1(k), splite_x_Boundary1(k+1), splite_x_Boundary2(k+1), splite_x_Boundary2(k)];
    y = [splite_y_Boundary1(k), splite_y_Boundary1(k+1), splite_y_Boundary2(k+1), splite_y_Boundary2(k)];
    normalBound2 = Boundary1Boundary2 / MaxTotal;
    fill(x, y, [normalBound2(k) 1 - normalBound2(k) 0])

end

% fill Boundary2 Boundary3
for l = 1:24
    x = [splite_x_Boundary2(l), splite_x_Boundary2(l+1), splite_x_Boundary3(l+1), splite_x_Boundary3(l)];
    y = [splite_y_Boundary2(l), splite_y_Boundary2(l+1), splite_y_Boundary3(l+1), splite_y_Boundary3(l)];
    normalBound3 = Boundary2Boundary3 / MaxTotal;
    fill(x, y, [normalBound3(l) 1 - normalBound3(l) 0])

end

% fill Boundary3 ColBoundary
for m = 1:24
    x = [splite_x_Boundary3(m), splite_x_Boundary3(m+1), splite_x_Col(m+1), splite_x_Col(m)];
    y = [splite_y_Boundary3(m), splite_y_Boundary3(m+1), splite_y_Col(m+1), splite_y_Col(m)];
    normalBound4 = Boundary3ColBoundary / MaxTotal;
    fill(x, y, [normalBound4(m) 1 - normalBound4(m) 0])

end


% Draw Pose% 
% a = reshape_location_data(:,1);
% b = reshape_location_data(:,2);
% 
% plot(a, b, 'x', Color='b');
% hold on;

% Arrow
drawArrow = @(x,y) quiver( x(1),y(1),x(2)-x(1),y(2)-y(1), 'LineWidth', 3, 'Color', 'red');

x1 = [0 34];
y1 = [0 0];

drawArrow(x1,y1);
hold on;

axis equal
grid on
grid minor

%% Write Data
% ... Write number Overlap data
wFilename = sprintf("../Data/Overlap_Data/Overlap_%s", file_name);

string_cols = ["0 ~ 15" "15 ~ 30" "30 ~ 45" "45 ~ 60" "60 ~ 75" "75 ~ 90" "90 ~ 105" "105 ~ 120" "120 ~ 135" "135 ~ 150" "150 ~ 165" "165 ~ 180" ...
    "180 ~ 195" "195 ~ 210" "210 ~ 225" "225 ~ 240" "240 ~ 255" "255 ~ 270" "270 ~ 285" "285 ~ 300" "300 ~ 315" "315 ~ 330" "330 ~ 345" "345 ~ 360"];

sumData = [string_cols; Boundary1Boundary2; Boundary2Boundary3; Boundary3ColBoundary];
writematrix(sumData, wFilename)
