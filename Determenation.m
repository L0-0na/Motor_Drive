
%% correction design
clc;
clear;
Vdc = 24;
Vt = 3.2;
K = Vdc/Vt;

VIref = 1.3;
Imax = 0.332;
Ks = VIref/Imax;
g = K*Ks;

s = tf('s');
L = 92*10^(-3);
R = 62.13;
G = g/(L*s +R);


C = kp + ki/s;
H = C*G / (1 + C*G);


%% case L = 120 mH
kp =4.5;
ki = 2991;
C = kp + (ki/s);
H = (C*G) / (1 + C*G);
bode(H);
step(H)
%% solving equations
syms x kp ki;
f = L*x^2 + (R+kp*g)*x + ki*g;
X = solve(f,x);
y = ki/kp - X(2);
KI = solve(y,ki);

tr = 1;
T = -1000- 3*(- (10000*kp)/33 - (125*((6400*kp^2)/9 + 3200*kp - (352*(- (15000*kp)/11 - (40000*kp^2)/33))/75 + 3600)^(1/2))/11 - 7500/11);
KP = vpasolve(T,kp)

syms R1 R2
u = Ks - R1/R2;
R11 = solve(u,R1)
%%

syms I P;
f=105*10^4*P+18.4*I+123206400;
e=2500*P^4+6*10^4*P^3+1100*P^2+6*10^4*P-(60*P+50*P^2)*368*10^(-3)*I+18.4*I-3600;
[a,b]=vpasolve(f,e);
%%
clc
clear
syms p kp ki;
f=92*10^(-3)*p^2+(60+50*kp)*p+50*ki;
r=solve(f,p);

tr=56*10^(-6);
g1=r(2)-3/tr;
g2=(ki/kp)-r(1);
[j,i]=vpasolve(g1,g2);