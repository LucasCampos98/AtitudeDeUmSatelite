clc; clear;

%%% MAGNETORQUER %
% Este codigo define os valores iniciais para a simulação do magnetorquer (Simulink)%
%Constantes
T_0_mt = 293;                       % K     - 20ºC 
alpha_0_mt = 3.9e-3;                % 1/K   - coeficiente de resistividade do cobre a 20ºC
sigma_0_mt = 1.72e-8;               % ohm.m - resistividade elétrica do cobre a 20ºC
% Considerando um fio com raio de 10mm %
A_wire_mt = ((10e-3)^2)*pi;         % m^2   - área da seção transversal do fio;
p_wire = (10e-3)*2*pi;              % m     - circunferência media das bobinas

n_mt = 200;                         % numero de enrolamentos
A_vec = [0.01; 0.01; 0.01];         % vetor areá da bobina.

K_x = 1e-4;                         % ganho do sinal PWM x
K_y = 1e-4;                         % ganho do sinal PWM y
K_z = 1e-4;                         % ganho do sinal PWM z

%Entradas de teste
% O campo magnético é de aproximadamente 48.000 [nT] a 18.000 [nT] em uma altura de 630 [km]. %
B_s = 1e-9 * [38000; 50; 2000];     % vetor do campo magnético da terra
Ctrl_PWM = [1; 1; 1];

Mag_I = 1e-9 * [21038.82; -2074.02; 17521.53];
v_I_S = [-15.5; -85.5; -85.5];      % Vetor atitude (I−>S)  

sim('Atuadores.slx')                % Executa a simulação dos atuadores no simulink