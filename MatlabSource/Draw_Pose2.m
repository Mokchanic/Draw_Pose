clc, clear, close all
%% Variables
countMatrix = zeros(300:300);
countSize = size(countMatrix);

file_name = 'Data_5m_40.csv';
file_path = sprintf('../Data/All_Peddata_200/%s',file_name);
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

% Boundary Circle4
radiusBoundary4 = 120;
bound4_x = radiusBoundary4 * cos(angles) + MainCenterX;
bound4_y = radiusBoundary4 * sin(angles) + MainCenterY;

splite_x_Boundary4 = transpose(radiusBoundary4 * cos(splite_angles) + MainCenterX);
splite_y_Boundary4 = transpose(radiusBoundary4 * sin(splite_angles) + MainCenterY);

[Boundary4_theta,Boundary4_rho] = cart2pol(splite_x_Boundary4,splite_y_Boundary4);

plot(bound4_x, bound4_y, 'k', 'LineWidth', 2);
hold on;

% Boundary Circle5
radiusBoundary5 = 140;
bound5_x = radiusBoundary5 * cos(angles) + MainCenterX;
bound5_y = radiusBoundary5 * sin(angles) + MainCenterY;

splite_x_Boundary5 = transpose(radiusBoundary5 * cos(splite_angles) + MainCenterX);
splite_y_Boundary5 = transpose(radiusBoundary5 * sin(splite_angles) + MainCenterY);

[Boundary5_theta,Boundary5_rho] = cart2pol(splite_x_Boundary5,splite_y_Boundary5);

plot(bound5_x, bound5_y, 'k', 'LineWidth', 2);
hold on;

% Boundary Circle6
radiusBoundary6 = 160;
bound6_x = radiusBoundary6 * cos(angles) + MainCenterX;
bound6_y = radiusBoundary6 * sin(angles) + MainCenterY;

splite_x_Boundary6 = transpose(radiusBoundary6 * cos(splite_angles) + MainCenterX);
splite_y_Boundary6 = transpose(radiusBoundary6 * sin(splite_angles) + MainCenterY);

[Boundary6_theta,Boundary6_rho] = cart2pol(splite_x_Boundary6,splite_y_Boundary6);

plot(bound6_x, bound6_y, 'k', 'LineWidth', 2);
hold on;

% Boundary Circle7
radiusBoundary7 = 180;
bound7_x = radiusBoundary7 * cos(angles) + MainCenterX;
bound7_y = radiusBoundary7 * sin(angles) + MainCenterY;

splite_x_Boundary7 = transpose(radiusBoundary7 * cos(splite_angles) + MainCenterX);
splite_y_Boundary7 = transpose(radiusBoundary7 * sin(splite_angles) + MainCenterY);

[Boundary7_theta,Boundary7_rho] = cart2pol(splite_x_Boundary7,splite_y_Boundary7);

plot(bound7_x, bound7_y, 'k', 'LineWidth', 2);
hold on;


% Boundary Circle8
radiusBoundary8 = 200;
bound8_x = radiusBoundary8 * cos(angles) + MainCenterX;
bound8_y = radiusBoundary8 * sin(angles) + MainCenterY;

splite_x_Boundary8 = transpose(radiusBoundary8 * cos(splite_angles) + MainCenterX);
splite_y_Boundary8 = transpose(radiusBoundary8 * sin(splite_angles) + MainCenterY);

[Boundary8_theta,Boundary8_rho] = cart2pol(splite_x_Boundary8,splite_y_Boundary8);

plot(bound8_x, bound8_y, 'k', 'LineWidth', 2);
hold on;

%% Draw Splite Line!
% Splite Line
splite_x = transpose(radiusBoundary8 * cos(splite_angles) + MainCenterX);
splite_y = transpose(radiusBoundary8 * sin(splite_angles) + MainCenterY);

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
Boundary3Boundary4 = zeros(24);
Boundary4Boundary5 = zeros(24);
Boundary5Boundary6 = zeros(24);
Boundary6Boundary7 = zeros(24);
Boundary7Boundary8 = zeros(24);


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

    % Check Boundary3 & Boundary4
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary3_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary4_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary3Boundary4(repeat_bound) = count;

    % Check Boundary4 & Boundary5
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary4_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary5_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary4Boundary5(repeat_bound) = count;

    % Check Boundary5 & Boundary6
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary5_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary6_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary5Boundary6(repeat_bound) = count;

    % Check Boundary6 & Boundary7
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary6_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary7_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary6Boundary7(repeat_bound) = count;

    % Check Boundary7 & Boundary8
    count = 0;
    for data_num = 1:length(reshape_location_data)
        if spliteLine_theta(repeat_bound) <= dot_theta(data_num) && dot_theta(data_num) < spliteLine_theta(repeat_bound+1)
            if Boundary7_rho(repeat_bound) <= dot_rho(data_num) && dot_rho(data_num) < Boundary8_rho(repeat_bound+1) 
                count = count + 1;
            end
        end
    end
    Boundary7Boundary8(repeat_bound) = count;
end

totalBoundaryData = [AgentBoundary1, Boundary1Boundary2, Boundary2Boundary3, Boundary3Boundary4, Boundary4Boundary5, Boundary5Boundary6, Boundary6Boundary7, Boundary7Boundary8];
MaxTotal = max(totalBoundaryData);

%% fill Draw
% % fill Agent Boundary1
% for j = 1:24
%     x = [splite_x_Agent(j), splite_x_Agent(j+1), splite_x_Boundary1(j+1), splite_x_Boundary1(j)];
%     y = [splite_y_Agent(j), splite_y_Agent(j+1), splite_y_Boundary1(j+1), splite_y_Boundary1(j)];
%     normalBound1 = AgentBoundary1 / MaxTotal;
%     fill(x, y, [normalBound1(j) 1 - normalBound1(j) 0])
% end

% fill Boundary1 Boundary2
for m = 1:24
    x = [splite_x_Boundary1(m), splite_x_Boundary1(m+1), splite_x_Boundary2(m+1), splite_x_Boundary2(m)];
    y = [splite_y_Boundary1(m), splite_y_Boundary1(m+1), splite_y_Boundary2(m+1), splite_y_Boundary2(m)];
    normalBound2 = round(Boundary1Boundary2 / MaxTotal, 1);
    
    if (normalBound2(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound2(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound2(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound2(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound2(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound2(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound2(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound2(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound2(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound2(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound2(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)

end
% 
% fill Boundary2 Boundary3
for m = 1:24
    x = [splite_x_Boundary2(m), splite_x_Boundary2(m+1), splite_x_Boundary3(m+1), splite_x_Boundary3(m)];
    y = [splite_y_Boundary2(m), splite_y_Boundary2(m+1), splite_y_Boundary3(m+1), splite_y_Boundary3(m)];
    normalBound3 = round(Boundary2Boundary3 / MaxTotal, 1);
    
    if (normalBound3(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound3(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound3(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound3(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound3(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound3(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound3(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound3(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound3(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound3(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound3(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)

end

% fill Boundary3 Boundary4
for m = 1:24
    x = [splite_x_Boundary3(m), splite_x_Boundary3(m+1), splite_x_Boundary4(m+1), splite_x_Boundary4(m)];
    y = [splite_y_Boundary3(m), splite_y_Boundary3(m+1), splite_y_Boundary4(m+1), splite_y_Boundary4(m)];
    normalBound4 = round(Boundary3Boundary4 / MaxTotal, 1);

    if (normalBound4(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound4(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound4(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound4(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound4(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound4(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound4(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound4(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound4(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound4(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound4(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)
end

% fill Boundary4 Boundary5
for m = 1:24
    x = [splite_x_Boundary4(m), splite_x_Boundary4(m+1), splite_x_Boundary5(m+1), splite_x_Boundary5(m)];
    y = [splite_y_Boundary4(m), splite_y_Boundary4(m+1), splite_y_Boundary5(m+1), splite_y_Boundary5(m)];
    normalBound5 = round(Boundary4Boundary5 / MaxTotal, 1);
    
    if (normalBound5(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound5(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound5(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound5(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound5(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound5(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound5(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound5(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound5(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound5(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound5(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)

end

% fill Boundary5 Boundary6
for m = 1:24
    x = [splite_x_Boundary5(m), splite_x_Boundary5(m+1), splite_x_Boundary6(m+1), splite_x_Boundary6(m)];
    y = [splite_y_Boundary5(m), splite_y_Boundary5(m+1), splite_y_Boundary6(m+1), splite_y_Boundary6(m)];
    normalBound6 = round(Boundary5Boundary6 / MaxTotal, 1);

    if (normalBound6(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound6(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound6(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound6(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound6(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound6(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound6(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound6(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound6(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound6(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound6(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)
end

% fill Boundary6 Boundary7
for m = 1:24
    x = [splite_x_Boundary6(m), splite_x_Boundary6(m+1), splite_x_Boundary7(m+1), splite_x_Boundary7(m)];
    y = [splite_y_Boundary6(m), splite_y_Boundary6(m+1), splite_y_Boundary7(m+1), splite_y_Boundary7(m)];
    normalBound7 = round(Boundary6Boundary7 / MaxTotal, 1);

    if (normalBound7(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound7(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound7(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound7(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound7(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound7(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound7(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound7(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound7(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound7(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound7(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)
end

% fill Boundary7 Boundary8
for m = 1:24
    x = [splite_x_Boundary7(m), splite_x_Boundary7(m+1), splite_x_Boundary8(m+1), splite_x_Boundary8(m)];
    y = [splite_y_Boundary7(m), splite_y_Boundary7(m+1), splite_y_Boundary8(m+1), splite_y_Boundary8(m)];
    normalBound8 = round(Boundary7Boundary8 / MaxTotal, 1);
    
    if (normalBound8(m) == 0)
        color = [0.99,0.96,0.68];
    elseif (normalBound8(m) == 0.1)
        color = [0.99,0.93,0.63];
    elseif (normalBound8(m) == 0.2)
        color = [0.99,0.91,0.59];
    elseif (normalBound8(m) == 0.3)
        color = [0.99,0.87,0.49];
    elseif (normalBound8(m) == 0.4)
        color = [0.98,0.76,0.37];
    elseif (normalBound8(m) == 0.5)
        color = [0.98,0.65,0.3];
    elseif (normalBound8(m) == 0.6)
        color = [0.97,0.56,0.27];
    elseif (normalBound8(m) == 0.7)
        color = [0.97,0.31,0.2];
    elseif (normalBound8(m) == 0.8)
        color = [0.89,0.15,0.16];
    elseif (normalBound8(m) == 0.9)
        color = [0.82,0.05,0.16];
    elseif (normalBound8(m) == 1.0)
        color = [1,0,0];
    end
    
    fill(x, y, color)
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

CustomColormap = [[0.99,0.96,0.68]; [0.99,0.93,0.63];[0.99,0.91,0.59];
    [0.99,0.87,0.49];[0.98,0.76,0.37];[0.98,0.65,0.3];
    [0.97,0.56,0.27];[0.97,0.31,0.2];[0.89,0.15,0.16];
    [0.82,0.05,0.16];[1,0,0]];

colormap(CustomColormap)
colorbar()

axis equal
grid on
grid minor

%% Write Data
% ... Write number Overlap data
wFilename = sprintf("../Data/Overlap_Data_200/Overlap_%s", file_name);

string_cols = ["0 ~ 15" "15 ~ 30" "30 ~ 45" "45 ~ 60" "60 ~ 75" "75 ~ 90" "90 ~ 105" "105 ~ 120" "120 ~ 135" "135 ~ 150" "150 ~ 165" "165 ~ 180" ...
    "180 ~ 195" "195 ~ 210" "210 ~ 225" "225 ~ 240" "240 ~ 255" "255 ~ 270" "270 ~ 285" "285 ~ 300" "300 ~ 315" "315 ~ 330" "330 ~ 345" "345 ~ 360"];

sumData = [string_cols; Boundary1Boundary2; Boundary2Boundary3; Boundary3Boundary4; Boundary4Boundary5;
    Boundary5Boundary6; Boundary6Boundary7; Boundary7Boundary8];
writematrix(sumData, wFilename)
