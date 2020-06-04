% masses [kg]
m_b = 12;
m_r = 75;
m_br = m_b + m_r;

% coordinates of center of mass [m]
a_b = 0.439;                            % along x (bicycle without rider)
a_br = 0.492;                           % along x (bicycle with rider)
a_r = (a_br*m_br - m_b*a_b)/m_r;        % along x (rider only)
h_b = 0.579;                            % along z (bicycle without rider)
h_br = 1.028;                           % along z (bicycle with rider)
h_r = (h_br*m_br - m_b*h_b)/m_r;        % along z (rider only)

% wheel distance [m]
b = 1;

% trail [m]
c = 0.08;

% head angle [rad]
lambda = 7*pi/18;

% inertia xx [kg*m^2]
J_b = m_b*h_b^2;        % bicycle without rider
J_br = m_br * h_br^2;   % bicycle with rider
J_r = m_r * h_r^2;      % rider only

% inertia xz [kg*m^2]
D = m_br*a_br*h_br;     % bicycle with rider

% linear velocity of rear wheel [m/s] (positive for forward motion)
V = 4;

% gravity acceleration [m/s^2]
g = 9.81;

% initial conditions
init_conds = [  0,   0;         %[phi_0 dphi_0]
              -15,   0; 
               30,  -5]*pi/180;