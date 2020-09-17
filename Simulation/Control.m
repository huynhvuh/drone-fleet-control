clc; clear all;

%% Double integrators

    % Coefficients
    b_x = 10;       % bound of x formation controller
    b_y = 10;       % bound of y formation controller

    B_psi = 1;      % first bound of heading
    B_z = 5;        % first bound of altitude
    B_theta = 1;    % first bound of longitudinal
    B_phi = 1;      % first bound of lateral

    % Chain topology - relative distances
    r_x12 = 8;
    r_x32 = 4;
    r_y12 = 8;
    r_y32 = 4;

    % Initial positions
%     p1 = {r_x12 - r_x32, r_y12 - r_y32, 0};   [x01, y01, z01] = p1{:};
%     p2 = {-r_x32, -r_y32, 0};   [x02, y02, z02] = p2{:};
%     p3 = {0, 0, 0};   [x03, y03, z03] = p3{:};
    
    p1 = {4, 4, 0};   [x01, y01, z01] = p1{:};
    p2 = {-2, -2, 0};   [x02, y02, z02] = p2{:};
    p3 = {0, 0, 0};   [x03, y03, z03] = p3{:};
    
%% Single intergrators

%     % Formation state-space
%     As = [-1 1 0; 1 -2 1; 0 1 -1];
%     Bs = [1;0; 0];
%     Cs = eye(3);
%     Ds = [0; 0; 0];    