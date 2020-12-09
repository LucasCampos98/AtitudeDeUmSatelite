clc; clear;
% Este codigo define os valores iniciais para a simulação do magnetometro e sensor solar(Simulink)%

%%% MAGNETOMETRO %
% Constantes %
heading_mag = 0.35;                 % Deslocamento do sensor
tilt_mag = -0.41;                   % Deslocamento do sensor devido a inclinação
bias_mag = [1; 0.43; -0.54];        % Vetor de polarização         

%Entradas de teste
Mag_I = 1e-9 * [-16039.3481; 5746.0765; 32029.4825];  % Vetor magnitude do campo magnetico B(I) [Tesla] 
v_I_S = [-15.5; -85.5; -85.5];      % Vetor atitude do satelite (I−>S)  

%%% SENSOR SOLAR %
% Constantes %
bias_sun = [1; 1];                  % Vetor de polarização devido a luz refletida pelo efeito albedo


%Entradas de teste
v_I_S = [-15.5; -85.5; -85.5];      % Vetor atitude do satelite (I−>S)  
Pos_Sun_I = [-51423309.2524718; -126830808.75118; -54989257.2569726];    %Vetor posição do sol R_s(I)
Eclipse = -1; 

sim('Sensores.slx')                 % Executa a simulação dos sensores no simulink