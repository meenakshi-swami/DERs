function [T,qc] = thermostaticControl(A,B,w,T0,Tset,qcMin,qcMax,dT)
% thermostaticControl implements thermostatic control for a 2R2C building 
% model. The control policy turns the heater on if the indoor temperature
% drops below a minimum threshold, turns the heater off if the indoor
% temperature exceeds a maximum threshold, and otherwise does what it did
% at the previous time step.
%
% Input:
%   A, the 2 x 2 discrete-time dynamics matrix
%   B, the 2 x 1 discrete-time input matrix
%   w, the K x 1 disturbance vector, kW
%   T0, the 2 x 1 initial state vector, C
%   Tset, the K+1 x 1 temperature setpoint vector, C
%   qcMin, the K x 1 minimum HVAC thermal power capacity, kW
%   qcMax, the K x 1 maximum HVAC thermal power capacity, kW
%   dT, the thermostat deadband halfwidth, C
%
% Output:
%   T, the 2 x K+1 indoor temperature vector, C
%   qc, the K x 1 HVAC thermal power vector, kW

% dimensions
K = length(w);

% data storage
T = zeros(2,K+1); % state [indoor air temperature; thermal mass tempearture], C
T(:,1) = T0; % initial state, C
qc = zeros(K,1); % HVAC thermal power, kW
u = zeros(K,1); % HVAC on/off state, 0 or 1
u0 = 0; % initial HVAC on/off state

% simulation
for k=1:K
    % control decision
    %
    % y
    % o
    % u
    % r
    % 
    % c
    % o
    % d
    % e
    % 
    % h
    % e
    % r
    % e
    %
    
    % dynamic update
    % your code here
end

end
