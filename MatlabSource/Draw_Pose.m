clc, clear, close all

%% Get Data
% Stop Ped 10
% M_rColPose = readmatrix("..\Result\R_AgentStop_Ped10\wColPose.csv"); % M_r: Matlab_read
% M_rRelPose = readmatrix("..\Result\R_AgentStop_Ped10\wRelPose.csv");
% M_rOverlap = readmatrix("..\Result\R_AgentStop_Ped10\wOverlaps.csv");

% Stop Ped 15
% M_rColPose = readmatrix("..\Result\R_AgentStop_Ped15\wColPose.csv"); % M_r: Matlab_read
% M_rRelPose = readmatrix("..\Result\R_AgentStop_Ped15\wRelPose.csv");
% M_rOverlap = readmatrix("..\Result\R_AgentStop_Ped15\wOverlaps.csv");

% Stop Ped 20
% M_rColPose = readmatrix("..\Result\R_AgentStop_Ped20\wColPose.csv"); % M_r: Matlab_read
% M_rRelPose = readmatrix("..\Result\R_AgentStop_Ped20\wRelPose.csv");
% M_rOverlap = readmatrix("..\Result\R_AgentStop_Ped20\wOverlaps.csv");

% Move Ped 10
% M_rColPose = readmatrix("..\Result\R_AgentMove_Ped10\wColPose.csv"); % M_r: Matlab_read
% M_rRelPose = readmatrix("..\Result\R_AgentMove_Ped10\wRelPose.csv");
% M_rOverlap = readmatrix("..\Result\R_AgentMove_Ped10\wOverlaps.csv");

% Move Ped 15
% M_rColPose = readmatrix("..\Result\R_AgentMove_Ped15\wColPose.csv"); % M_r: Matlab_read
% M_rRelPose = readmatrix("..\Result\R_AgentMove_Ped15\wRelPose.csv");
% M_rOverlap = readmatrix("..\Result\R_AgentMove_Ped15\wOverlaps.csv");

% Move Ped 20
M_rColPose = readmatrix("..\Result\R_AgentMove_Ped20\wColPose.csv"); % M_r: Matlab_read
% M_rRelPose = readmatrix("..\Result\R_AgentMove_Ped20\wRelPose.csv");
M_rOverlap = readmatrix("..\Result\R_AgentMove_Ped20\wOverlaps.csv");

% Overlap Pose
M_rRelPose = readmatrix("..\Result\wPedOverlap.csv");

%% Preprocessing
ColDataSize = size(M_rColPose);
RelDataSize = size(M_rRelPose);
OverlapSize = size(M_rOverlap);

% ColPose
x_axisCol = M_rColPose(1:ColDataSize(1),1);
y_axisCol = M_rColPose(1:ColDataSize(1),2);

% RelPose
x_axisRel = M_rRelPose(1:RelDataSize(1),1);
y_axisRel = M_rRelPose(1:RelDataSize(1),2);

% Overlap
number = M_rOverlap(1:OverlapSize(1), 1);
numberOverlap = M_rOverlap(1:OverlapSize(1), 2);

MaxOverlap = max(numberOverlap);

%% MainCircle

% MainCommon
angles = linspace(0, 2*pi, 100);
MainCenterX = 0;
MainCentery = 0;

% AgentCircle
radiusAgent = 34;
agent_x = radiusAgent * cos(angles) + MainCenterX;
agent_y = radiusAgent * sin(angles) + MainCentery;

plot(agent_x, agent_y, 'k', 'LineWidth', 5);
hold on;

% MainCircle1
radius1 = 80;
x1 = radius1 * cos(angles) + MainCenterX;
y1 = radius1 * sin(angles) + MainCentery;

plot(x1, y1, 'k', 'LineWidth', 2, 'LineStyle','--');
hold on;

% MainCircle2
radius2 = 100;
x2 = radius2 * cos(angles) + MainCenterX;
y2 = radius2 * sin(angles) + MainCentery;

plot(x2, y2, 'k', 'LineWidth', 2, 'LineStyle','--');
hold on;

% MainCircle3
radius3 = 120;
x3 = radius3 * cos(angles) + MainCenterX;
y3 = radius3 * sin(angles) + MainCentery;

plot(x3, y3, 'k', 'LineWidth', 2, 'LineStyle','--');
hold on;

%% Collision Circle
% radius = 5;
% 
% for repeat = 1:ColDataSize(1)
%     x = radius * cos(angles) + x_axisCol(repeat);
%     y = radius * sin(angles) + y_axisCol(repeat);
% 
%     R_color = numberOverlap(repeat)/MaxOverlap;
%     G_color = 1 - (numberOverlap(repeat)/MaxOverlap);
%     
%     patch(x, y, [R_color,G_color,0]); % RGB Color Input
% 
%     plot(x, y, 'k', 'LineWidth', 1);
%     hold on;
% end

%% Plot
plot(x_axisRel, y_axisRel, 'x', 'Color', 'b'); % Draw Distribution

plot(MainCenterX, MainCentery, 'k+', 'LineWidth', 3, 'MarkerSize', 14);

% Arrow
drawArrow = @(x,y) quiver( x(1),y(1),x(2)-x(1),y(2)-y(1), 'LineWidth', 2, 'Color', 'red');

x1 = [0 34];
y1 = [0 0];

drawArrow(x1,y1);
hold on;

grid on;
axis equal;
xlabel('X Axis', 'FontSize', 14);
ylabel('Y Axis', 'FontSize', 14);