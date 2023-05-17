clc;
clear;
close all;

%% Parameters
M = 0.5;    % mass of the cart
m = 0.2;    % mass of the pendulum
b1 = 0.2;   % friction for the cart
b2 = 0.002; % friction for the pendulum
I = 0.006;  % inertia of the pendulum
g = 9.81;   % gravitation force
l = 0.3;    % length of the pendulum

s = tf('s');
% syms s;
q = (M+m)*(I+m*l^2)-(m*l)^2;

%% pendulum control
lead_p = 4.81*(s+2.38)/(s+11.45);
lag_p = (s+6.58)/(s+4);
pd_p = 30.76 + 2.13*s;
pi_p = 0.25 + 0.0825/s;

N_pend = (m*l*s/q);
D_pend = (s^3 + (b1*(I + m*l^2)+b2*(M+m))*s^2/q - (b1*b2+(M + m)*m*g*l)*s/q - b1*m*g*l/q);
pend_initial = lag_p*lead_p*pi_p*pd_p*N_pend/D_pend;

%% cart control
pd_c = 29.05 + 4.41*s;
pi_c = 4.41 + 0.0441/s;

N_cart = (((I+m*l^2)/q)*s^2 +(b2/q)*s- (m*g*l/q));
D_cart = (s^4 + (b1*(I + m*l^2)+b2*(M+m))*s^3/q - (b1*b2+(M + m)*m*g*l)*s^2/q - b1*m*g*l*s/q);
cart_initial = pi_c*pd_c*N_cart/D_cart;

sys_tf = [cart_initial ; pend_initial];

%% state space model

A = [0        1                0                    0      ;
     0   -((I+m*l^2)*b1)/q  (m^2*g*l^2)/q      -(m*l*b2)/q ;
     0        0                 0                   1      ;
     0   -(m*l*b1)/q       (m*g*l*(M+m))/q   -(b2*(M+m))/q];

 B = [     0      ;
       (I+m*l^2)/q;
           0      ;
        (m*l)/q  ];
      
C = [1 0 0 0;
     0 0 1 0];
D = [0;
     0];

 %% state feedback
 
p = [-4 -5 -11 -12];  % chosen arbitrary
k = place(A,B,p);

sys_ss = ss(A-B*k,B,C,D);
[num, dnum] = ss2tf(A-B*k, B, C, D); 
cart = tf(num(1,:), dnum); 
pend = tf(num(2,:), dnum); 

%% plot all diagrams

figure(1)
subplot(2,1,1)
step(feedback(pend,1))
grid on;legend('pendulum');
subplot(2,1,2)
step(feedback(cart,1))
grid on;legend('cart');

figure(2)
subplot(2,1,1)
nyquist(pend)
legend('pendulum');
axis([-0.05 0.05 -0.02 0.02]);
subplot(2,1,2)
nyquist(cart)
legend('cart');
axis([-0.05 0.05 -0.02 0.02]);

figure(3)
subplot(2,1,1)
bode(pend)
grid on;legend('pendulum');
subplot(2,1,2)
bode(cart)
grid on;legend('cart');

figure(4)
subplot(2,1,1)
rlocus(pend)
legend('pendulum');
subplot(2,1,2)
rlocus(cart)
legend('cart');

% using PID & lead-lag
figure(5)
subplot(2,1,1)
step(feedback(pend_initial,25))
grid on;legend('pendulum');
subplot(2,1,2)
step(feedback(cart_initial,3))
grid on;legend('cart');

%%gm , pm , wgc , wpc

[gm_p, pm_p, wpc_p, wgc_p]= margin(pend);
[gm_c, pm_c, wpc_c, wgc_c]= margin(cart);
