clc, clear, close all;
%%

location_data_pile = zeros(10, 3, 8000);

% for i = 0:9
%     file_name = sprintf('../Data/All_Peddata/%dcomplete.csv', i);
%     location_data = readmatrix(file_name);
%     reshape_location_data = reshape(location_data, 3, length(location_data)/3);
%     n = size(reshape_location_data);
%     location_data_pile(i+1, :, 8001-n(2):8000) = reshape_location_data;
% end
% 
% location_data_pile = location_data_pile(:, :, 8001-n(2):8000);
% ped1_rotation = location_data_pile(1, 3, :);
% ped1_location = location_data_pile(1, 1:2, :);
% remain_loaction = location_data_pile(2:10, 1:2, :);
% 
% ped1_local = zeros(9, 2, n(2));
% 
% for ped_num = 1:9
%     for time = 1:n(2)
%         local_location = remain_loaction(ped_num, :, time) - ped1_location(1, :, time);
%         local_location = local_location * [1; 1i] * exp(-1i * ped1_rotation(1, 1, time) * pi/180);
%         
%         ped1_local(ped_num, :, time) = local_location;
%     end
% end
% 
% all_ped_local = ped1_local(1:9, 1, 1:time);
% 
% for ped_num = 1:9
%     real_x1 = real(ped1_local(ped_num, 1:time));
%     imag_x1 = imag(ped1_local(ped_num, 1:time));
%     
%     color_r = 0.05 * ped_num;
%     color_g = 1 - 0.1 * ped_num;
%     color_b = 0.1 * ped_num;
% 
%     plot(real_x1, imag_x1, 'o', 'Color', [color_r, color_g, color_b]);
%     hold on;
% end
% 
% xlim([-500, 500]);
% ylim([-500, 500]);
% legend('ped1','ped2','ped3','ped4','ped5','ped6','ped7','ped8','ped9')
% grid on;
