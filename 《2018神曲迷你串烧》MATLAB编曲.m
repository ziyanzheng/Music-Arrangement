%% Matlab版《2018神曲迷你串烧》
% ReCoding by Zheng Ziyan
%% define the basic sound wave
fs = 44100; % Standard sample rate
dt = 1/fs; % Standard sampling time interval
T16 = 1/fs*3199; %To determine the time length of a  1/16 note, suggest as an odd number
t16 = [0:dt:T16];
[temp k] = size(t16);
t1 = linspace(0,16*T16,16*k);% An array with the same length as a full note
t2 = linspace(0,8*T16,8*k);
t4 = linspace(0,4*T16,4*k);
t4d = linspace(0,6*T16,6*k);%A special array represents a 1/4+1/8 note
t8 = linspace(0,2*T16,2*k);
mod1 = sin(pi*t1/t1(end));% Defining a basic amplitude function (So that the sound won't suddenly occur or vanish
mod2 = sin(pi*t2/t2(end));
mod4 = sin(pi*t4/t4(end));
mod4d = sin(pi*t4d/t4d(end));
mod8 = sin(pi*t8/t8(end));

%% Frequency and note List
f0 = 2^(5/12)*261.626; % 1 = F , which is five half tones higher than C tone
f0u = f0*2; % 小字二组1音
f0d = f0/2; % 小字组1音
f0dd = f0d/2; % 大字组1音
ScaleTable = [1 2^(1/12) 2^(2/12) 2^(3/12) ...
    2^(4/12) 2^(5/12) 2^(6/12) 2^(7/12) ...
    2^(8/12) 2^(9/12) 2^(10/12) 2^(11/12)]; %Other frequencies
%% 小字一组 note List
           % full notes
F1 = mod1.*cos(2*pi*ScaleTable(1)*f0*t1);
F2_ = mod1.*cos(2*pi*ScaleTable(2)*f0*t1);
F2 = mod1.*cos(2*pi*ScaleTable(3)*f0*t1);
F3_ = mod1.*cos(2*pi*ScaleTable(4)*f0*t1);
F3 = mod1.*cos(2*pi*ScaleTable(5)*f0*t1);
F4 = mod1.*cos(2*pi*ScaleTable(6)*f0*t1);
F5_ = mod1.*cos(2*pi*ScaleTable(7)*f0*t1);
F5 = mod1.*cos(2*pi*ScaleTable(8)*f0*t1);
F6_ = mod1.*cos(2*pi*ScaleTable(9)*f0*t1);
F6 = mod1.*cos(2*pi*ScaleTable(10)*f0*t1);
F7_ = mod1.*cos(2*pi*ScaleTable(11)*f0*t1);
F7 = mod1.*cos(2*pi*ScaleTable(12)*f0*t1);
Fb = zeros(size(mod1));

          % 1/2 notes
H1 = mod2.*cos(2*pi*ScaleTable(1)*f0*t2);
H2_ = mod2.*cos(2*pi*ScaleTable(2)*f0*t2);
H2 = mod2.*cos(2*pi*ScaleTable(3)*f0*t2);
H3_ = mod2.*cos(2*pi*ScaleTable(4)*f0*t2);
H3 = mod2.*cos(2*pi*ScaleTable(5)*f0*t2);
H4 = mod2.*cos(2*pi*ScaleTable(6)*f0*t2);
H5_ = mod2.*cos(2*pi*ScaleTable(7)*f0*t2);
H5 = mod2.*cos(2*pi*ScaleTable(8)*f0*t2);
H6_ = mod2.*cos(2*pi*ScaleTable(9)*f0*t2);
H6 = mod2.*cos(2*pi*ScaleTable(10)*f0*t2);
H7_ = mod2.*cos(2*pi*ScaleTable(11)*f0*t2);
H7 = mod2.*cos(2*pi*ScaleTable(12)*f0*t2);
Hb = zeros(size(mod2));

           % 1/4+1/2 notes
fd1 = mod4d.*cos(2*pi*ScaleTable(1)*f0*t4d);
fd2_ = mod4d.*cos(2*pi*ScaleTable(2)*f0*t4d);
fd2 = mod4d.*cos(2*pi*ScaleTable(3)*f0*t4d);
fd3_ = mod4d.*cos(2*pi*ScaleTable(4)*f0*t4d);
fd3 = mod4d.*cos(2*pi*ScaleTable(5)*f0*t4d);
fd4 = mod4d.*cos(2*pi*ScaleTable(6)*f0*t4d);
fd5_ = mod4d.*cos(2*pi*ScaleTable(7)*f0*t4d);
fd5 = mod4d.*cos(2*pi*ScaleTable(8)*f0*t4d);
fd6_ = mod4d.*cos(2*pi*ScaleTable(9)*f0*t4d);
fd6 = mod4d.*cos(2*pi*ScaleTable(10)*f0*t4d);
fd7_ = mod4d.*cos(2*pi*ScaleTable(11)*f0*t4d);
fd7 = mod4d.*cos(2*pi*ScaleTable(12)*f0*t4d);
fdb = zeros(size(mod4d));

          % 1/4 notes
f1 = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
f2_ = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
f2 = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
f3_ = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
f3 = mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
f4 = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
f5_ = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
f5 = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
f6_ = mod4.*cos(2*pi*ScaleTable(9)*f0*t4);
f6 = mod4.*cos(2*pi*ScaleTable(10)*f0*t4);
f7_ = mod4.*cos(2*pi*ScaleTable(11)*f0*t4);
f7 = mod4.*cos(2*pi*ScaleTable(12)*f0*t4);
fb = zeros(size(mod4));

          % 1/8 notes
e1 = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
e2_ = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
e2 = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
e3_ = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);
e3 = mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
e4 = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
e5_ = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
e5 = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
e6_ = mod8.*cos(2*pi*ScaleTable(9)*f0*t8);
e6 = mod8.*cos(2*pi*ScaleTable(10)*f0*t8);
e7_ = mod8.*cos(2*pi*ScaleTable(11)*f0*t8);
e7 = mod8.*cos(2*pi*ScaleTable(12)*f0*t8);
eb = zeros(size(mod8));

%% 小字二组 
          % full notes
uF1 = mod1.*cos(2*pi*ScaleTable(1)*f0u*t1);
uF2_ = mod1.*cos(2*pi*ScaleTable(2)*f0u*t1);
uF2 = mod1.*cos(2*pi*ScaleTable(3)*f0u*t1);
uF3_ = mod1.*cos(2*pi*ScaleTable(4)*f0u*t1);
uF3 = mod1.*cos(2*pi*ScaleTable(5)*f0u*t1);
uF4 = mod1.*cos(2*pi*ScaleTable(6)*f0u*t1);
uF5_ = mod1.*cos(2*pi*ScaleTable(7)*f0u*t1);
uF5 = mod1.*cos(2*pi*ScaleTable(8)*f0u*t1);
uF6_ = mod1.*cos(2*pi*ScaleTable(9)*f0u*t1);
uF6 = mod1.*cos(2*pi*ScaleTable(10)*f0u*t1);
uF7_ = mod1.*cos(2*pi*ScaleTable(11)*f0u*t1);
uF7 = mod1.*cos(2*pi*ScaleTable(12)*f0u*t1);

          % 1/2 notes
uH1 = mod2.*cos(2*pi*ScaleTable(1)*f0u*t2);
uH2_ = mod2.*cos(2*pi*ScaleTable(2)*f0u*t2);
uH2 = mod2.*cos(2*pi*ScaleTable(3)*f0u*t2);
uH3_ = mod2.*cos(2*pi*ScaleTable(4)*f0u*t2);
uH3 = mod2.*cos(2*pi*ScaleTable(5)*f0u*t2);
uH4 = mod2.*cos(2*pi*ScaleTable(6)*f0u*t2);
uH5_ = mod2.*cos(2*pi*ScaleTable(7)*f0u*t2);
uH5 = mod2.*cos(2*pi*ScaleTable(8)*f0u*t2);
uH6_ = mod2.*cos(2*pi*ScaleTable(9)*f0u*t2);
uH6 = mod2.*cos(2*pi*ScaleTable(10)*f0u*t2);
uH7_ = mod2.*cos(2*pi*ScaleTable(11)*f0u*t2);
uH7 = mod2.*cos(2*pi*ScaleTable(12)*f0u*t2);

           % 1/4+1/2 notes
ufd1 = mod4d.*cos(2*pi*ScaleTable(1)*f0u*t4d);
ufd2_ = mod4d.*cos(2*pi*ScaleTable(2)*f0u*t4d);
ufd2 = mod4d.*cos(2*pi*ScaleTable(3)*f0u*t4d);
ufd3_ = mod4d.*cos(2*pi*ScaleTable(4)*f0u*t4d);
ufd3 = mod4d.*cos(2*pi*ScaleTable(5)*f0u*t4d);
ufd4 = mod4d.*cos(2*pi*ScaleTable(6)*f0u*t4d);
ufd5_ = mod4d.*cos(2*pi*ScaleTable(7)*f0u*t4d);
ufd5 = mod4d.*cos(2*pi*ScaleTable(8)*f0u*t4d);
ufd6_ = mod4d.*cos(2*pi*ScaleTable(9)*f0u*t4d);
ufd6 = mod4d.*cos(2*pi*ScaleTable(10)*f0u*t4d);
ufd7_ = mod4d.*cos(2*pi*ScaleTable(11)*f0u*t4d);
ufd7 = mod4d.*cos(2*pi*ScaleTable(12)*f0u*t4d);

          % 1/4 notes
uf1 = mod4.*cos(2*pi*ScaleTable(1)*f0u*t4);
uf2_ = mod4.*cos(2*pi*ScaleTable(2)*f0u*t4);
uf2 = mod4.*cos(2*pi*ScaleTable(3)*f0u*t4);
uf3_ = mod4.*cos(2*pi*ScaleTable(4)*f0u*t4);
uf3 = mod4.*cos(2*pi*ScaleTable(5)*f0u*t4);
uf4 = mod4.*cos(2*pi*ScaleTable(6)*f0u*t4);
uf5_ = mod4.*cos(2*pi*ScaleTable(7)*f0u*t4);
uf5 = mod4.*cos(2*pi*ScaleTable(8)*f0u*t4);
uf6_ = mod4.*cos(2*pi*ScaleTable(9)*f0u*t4);
uf6 = mod4.*cos(2*pi*ScaleTable(10)*f0u*t4);
uf7_ = mod4.*cos(2*pi*ScaleTable(11)*f0u*t4);
uf7 = mod4.*cos(2*pi*ScaleTable(12)*f0u*t4);

          % 1/8 notes
ue1 = mod8.*cos(2*pi*ScaleTable(1)*f0u*t8);
ue2_ = mod8.*cos(2*pi*ScaleTable(2)*f0u*t8);
ue2 = mod8.*cos(2*pi*ScaleTable(3)*f0u*t8);
ue3_ = mod8.*cos(2*pi*ScaleTable(4)*f0u*t8);
ue3 = mod8.*cos(2*pi*ScaleTable(5)*f0u*t8);
ue4 = mod8.*cos(2*pi*ScaleTable(6)*f0u*t8);
ue5_ = mod8.*cos(2*pi*ScaleTable(7)*f0u*t8);
ue5 = mod8.*cos(2*pi*ScaleTable(8)*f0u*t8);
ue6_ = mod8.*cos(2*pi*ScaleTable(9)*f0u*t8);
ue6 = mod8.*cos(2*pi*ScaleTable(10)*f0u*t8);
ue7_ = mod8.*cos(2*pi*ScaleTable(11)*f0u*t8);
ue7 = mod8.*cos(2*pi*ScaleTable(12)*f0u*t8);

%% 小字组

           % full notes
dF1 = mod1.*cos(2*pi*ScaleTable(1)*f0d*t1);
dF2_ = mod1.*cos(2*pi*ScaleTable(2)*f0d*t1);
dF2 = mod1.*cos(2*pi*ScaleTable(3)*f0d*t1);
dF3_ = mod1.*cos(2*pi*ScaleTable(4)*f0d*t1);
dF3 = mod1.*cos(2*pi*ScaleTable(5)*f0d*t1);
dF4 = mod1.*cos(2*pi*ScaleTable(6)*f0d*t1);
dF5_ = mod1.*cos(2*pi*ScaleTable(7)*f0d*t1);
dF5 = mod1.*cos(2*pi*ScaleTable(8)*f0d*t1);
dF6_ = mod1.*cos(2*pi*ScaleTable(9)*f0d*t1);
dF6 = mod1.*cos(2*pi*ScaleTable(10)*f0d*t1);
dF7_ = mod1.*cos(2*pi*ScaleTable(11)*f0d*t1);
dF7 = mod1.*cos(2*pi*ScaleTable(12)*f0d*t1);

          % 1/2 notes
dH1 = mod2.*cos(2*pi*ScaleTable(1)*f0d*t2);
dH2_ = mod2.*cos(2*pi*ScaleTable(2)*f0d*t2);
dH2 = mod2.*cos(2*pi*ScaleTable(3)*f0d*t2);
dH3_ = mod2.*cos(2*pi*ScaleTable(4)*f0d*t2);
dH3 = mod2.*cos(2*pi*ScaleTable(5)*f0d*t2);
dH4 = mod2.*cos(2*pi*ScaleTable(6)*f0d*t2);
dH5_ = mod2.*cos(2*pi*ScaleTable(7)*f0d*t2);
dH5 = mod2.*cos(2*pi*ScaleTable(8)*f0d*t2);
dH6_ = mod2.*cos(2*pi*ScaleTable(9)*f0d*t2);
dH6 = mod2.*cos(2*pi*ScaleTable(10)*f0d*t2);
dH7_ = mod2.*cos(2*pi*ScaleTable(11)*f0d*t2);
dH7 = mod2.*cos(2*pi*ScaleTable(12)*f0d*t2);

           % 1/4+1/2 notes
dfd1 = mod4d.*cos(2*pi*ScaleTable(1)*f0d*t4d);
dfd2_ = mod4d.*cos(2*pi*ScaleTable(2)*f0d*t4d);
dfd2 = mod4d.*cos(2*pi*ScaleTable(3)*f0d*t4d);
dfd3_ = mod4d.*cos(2*pi*ScaleTable(4)*f0d*t4d);
dfd3 = mod4d.*cos(2*pi*ScaleTable(5)*f0d*t4d);
dfd4 = mod4d.*cos(2*pi*ScaleTable(6)*f0d*t4d);
dfd5_ = mod4d.*cos(2*pi*ScaleTable(7)*f0d*t4d);
dfd5 = mod4d.*cos(2*pi*ScaleTable(8)*f0d*t4d);
dfd6_ = mod4d.*cos(2*pi*ScaleTable(9)*f0d*t4d);
dfd6 = mod4d.*cos(2*pi*ScaleTable(10)*f0d*t4d);
dfd7_ = mod4d.*cos(2*pi*ScaleTable(11)*f0d*t4d);
dfd7 = mod4d.*cos(2*pi*ScaleTable(12)*f0d*t4d);

          % 1/4 notes
df1 = mod4.*cos(2*pi*ScaleTable(1)*f0d*t4);
df2_ = mod4.*cos(2*pi*ScaleTable(2)*f0d*t4);
df2 = mod4.*cos(2*pi*ScaleTable(3)*f0d*t4);
df3_ = mod4.*cos(2*pi*ScaleTable(4)*f0d*t4);
df3 = mod4.*cos(2*pi*ScaleTable(5)*f0d*t4);
df4 = mod4.*cos(2*pi*ScaleTable(6)*f0d*t4);
df5_ = mod4.*cos(2*pi*ScaleTable(7)*f0d*t4);
df5 = mod4.*cos(2*pi*ScaleTable(8)*f0d*t4);
df6_ = mod4.*cos(2*pi*ScaleTable(9)*f0d*t4);
df6 = mod4.*cos(2*pi*ScaleTable(10)*f0d*t4);
df7_ = mod4.*cos(2*pi*ScaleTable(11)*f0d*t4);
df7 = mod4.*cos(2*pi*ScaleTable(12)*f0d*t4);

          % 1/8 notes
de1 = mod8.*cos(2*pi*ScaleTable(1)*f0d*t8);
de2_ = mod8.*cos(2*pi*ScaleTable(2)*f0d*t8);
de2 = mod8.*cos(2*pi*ScaleTable(3)*f0d*t8);
de3_ = mod8.*cos(2*pi*ScaleTable(4)*f0d*t8);
de3 = mod8.*cos(2*pi*ScaleTable(5)*f0d*t8);
de4 = mod8.*cos(2*pi*ScaleTable(6)*f0d*t8);
de5_ = mod8.*cos(2*pi*ScaleTable(7)*f0d*t8);
de5 = mod8.*cos(2*pi*ScaleTable(8)*f0d*t8);
de6_ = mod8.*cos(2*pi*ScaleTable(9)*f0d*t8);
de6 = mod8.*cos(2*pi*ScaleTable(10)*f0d*t8);
de7_ = mod8.*cos(2*pi*ScaleTable(11)*f0d*t8);
de7 = mod8.*cos(2*pi*ScaleTable(12)*f0d*t8);

%% 大字组
           % full notes
ddF1 = mod1.*cos(2*pi*ScaleTable(1)*f0dd*t1);
ddF2_ = mod1.*cos(2*pi*ScaleTable(2)*f0dd*t1);
ddF2 = mod1.*cos(2*pi*ScaleTable(3)*f0dd*t1);
ddF3_ = mod1.*cos(2*pi*ScaleTable(4)*f0dd*t1);
ddF3 = mod1.*cos(2*pi*ScaleTable(5)*f0dd*t1);
ddF4 = mod1.*cos(2*pi*ScaleTable(6)*f0dd*t1);
ddF5_ = mod1.*cos(2*pi*ScaleTable(7)*f0dd*t1);
ddF5 = mod1.*cos(2*pi*ScaleTable(8)*f0dd*t1);
ddF6_ = mod1.*cos(2*pi*ScaleTable(9)*f0dd*t1);
ddF6 = mod1.*cos(2*pi*ScaleTable(10)*f0dd*t1);
ddF7_ = mod1.*cos(2*pi*ScaleTable(11)*f0dd*t1);
ddF7 = mod1.*cos(2*pi*ScaleTable(12)*f0dd*t1);

          % 1/2 notes
ddH1 = mod2.*cos(2*pi*ScaleTable(1)*f0dd*t2);
ddH2_ = mod2.*cos(2*pi*ScaleTable(2)*f0dd*t2);
ddH2 = mod2.*cos(2*pi*ScaleTable(3)*f0dd*t2);
ddH3_ = mod2.*cos(2*pi*ScaleTable(4)*f0dd*t2);
ddH3 = mod2.*cos(2*pi*ScaleTable(5)*f0dd*t2);
ddH4 = mod2.*cos(2*pi*ScaleTable(6)*f0dd*t2);
ddH5_ = mod2.*cos(2*pi*ScaleTable(7)*f0dd*t2);
ddH5 = mod2.*cos(2*pi*ScaleTable(8)*f0dd*t2);
ddH6_ = mod2.*cos(2*pi*ScaleTable(9)*f0dd*t2);
ddH6 = mod2.*cos(2*pi*ScaleTable(10)*f0dd*t2);
ddH7_ = mod2.*cos(2*pi*ScaleTable(11)*f0dd*t2);
ddH7 = mod2.*cos(2*pi*ScaleTable(12)*f0dd*t2);

           % 1/4+1/2 notes
ddfd1 = mod4d.*cos(2*pi*ScaleTable(1)*f0dd*t4d);
ddfd2_ = mod4d.*cos(2*pi*ScaleTable(2)*f0dd*t4d);
ddfd2 = mod4d.*cos(2*pi*ScaleTable(3)*f0dd*t4d);
ddfd3_ = mod4d.*cos(2*pi*ScaleTable(4)*f0dd*t4d);
ddfd3 = mod4d.*cos(2*pi*ScaleTable(5)*f0dd*t4d);
ddfd4 = mod4d.*cos(2*pi*ScaleTable(6)*f0dd*t4d);
ddfd5_ = mod4d.*cos(2*pi*ScaleTable(7)*f0dd*t4d);
ddfd5 = mod4d.*cos(2*pi*ScaleTable(8)*f0dd*t4d);
ddfd6_ = mod4d.*cos(2*pi*ScaleTable(9)*f0dd*t4d);
ddfd6 = mod4d.*cos(2*pi*ScaleTable(10)*f0dd*t4d);
ddfd7_ = mod4d.*cos(2*pi*ScaleTable(11)*f0dd*t4d);
ddfd7 = mod4d.*cos(2*pi*ScaleTable(12)*f0dd*t4d);

          % 1/4 notes
ddf1 = mod4.*cos(2*pi*ScaleTable(1)*f0dd*t4);
ddf2_ = mod4.*cos(2*pi*ScaleTable(2)*f0dd*t4);
ddf2 = mod4.*cos(2*pi*ScaleTable(3)*f0dd*t4);
ddf3_ = mod4.*cos(2*pi*ScaleTable(4)*f0dd*t4);
ddf3 = mod4.*cos(2*pi*ScaleTable(5)*f0dd*t4);
ddf4 = mod4.*cos(2*pi*ScaleTable(6)*f0dd*t4);
ddf5_ = mod4.*cos(2*pi*ScaleTable(7)*f0dd*t4);
ddf5 = mod4.*cos(2*pi*ScaleTable(8)*f0dd*t4);
ddf6_ = mod4.*cos(2*pi*ScaleTable(9)*f0dd*t4);
ddf6 = mod4.*cos(2*pi*ScaleTable(10)*f0dd*t4);
ddf7_ = mod4.*cos(2*pi*ScaleTable(11)*f0dd*t4);
ddf7 = mod4.*cos(2*pi*ScaleTable(12)*f0dd*t4);

          % 1/8 notes
dde1 = mod8.*cos(2*pi*ScaleTable(1)*f0dd*t8);
dde2_ = mod8.*cos(2*pi*ScaleTable(2)*f0dd*t8);
dde2 = mod8.*cos(2*pi*ScaleTable(3)*f0dd*t8);
dde3_ = mod8.*cos(2*pi*ScaleTable(4)*f0dd*t8);
dde3 = mod8.*cos(2*pi*ScaleTable(5)*f0dd*t8);
dde4 = mod8.*cos(2*pi*ScaleTable(6)*f0dd*t8);
dde5_ = mod8.*cos(2*pi*ScaleTable(7)*f0dd*t8);
dde5 = mod8.*cos(2*pi*ScaleTable(8)*f0dd*t8);
dde6_ = mod8.*cos(2*pi*ScaleTable(9)*f0dd*t8);
dde6 = mod8.*cos(2*pi*ScaleTable(10)*f0dd*t8);
dde7_ = mod8.*cos(2*pi*ScaleTable(11)*f0dd*t8);
dde7 = mod8.*cos(2*pi*ScaleTable(12)*f0dd*t8);

%% Melody     
s = [% 学猫叫 
    df1 df5 f1 df5 f3 df5 f1+uf1 df5+uf2, ...
    df1+uf3 df5+f5 f1+uf1 df5+uf3 f3+uf3 df5 f1+uf2 df5+uf1, ...
    ddf7+uf2 df5+uf5 df7+uf5 df5+uf5 f2+uf5 df5 df7+uf1 df5+f7 , ...
    ddf6+uf1 df3+uf1 df6+uf1 f1+uf1 f3+uf1 f1+fb f3+f7 df6+uf1 , ...
    df5+f7 df7+uf1 f3+f7 df7+f6 f3+f5 ... 
    ...% 离人愁
    df7+uf1 f1+f6 df4+f6, ...
    dfd1+dfd3+ufd5 ufd3 uf1 df4+uf2 df1 df2 df3+f5, ...
    dfd1+dfd3+ufd5 ufd5 uf1 df4+f6 df1 df2 df3+f5, ...
    dfd4+fd1+fd6 fd1+ufd3 df3+f5 dfd1+dfd4+fd6 dfd2+ufd3 df1+f5, ...
    ddf1+f1+f6 f6 f7 ...
    ...% 说散就散 
    uf1 e3+ue1 e3+ue1 uf2 fd1+ufd3 ue5, ...
    df4+uf6 f1 f4 f1+uf1 df5+uf2 f2+uf1 f5+f6 f2+uf3, ...
    df1 df5 f1 df5+uf1 f3+uf1 df5+uf2 f1+uf3 df5+uf5, ... 
    df4+uf6 f1 f4 f1+f7 df5+f7 f2+f6 f5+f7 f2+uf1,...
    ...% 不仅仅是喜欢
    df1 df5 f3 f5 uf3 uf2 uf1 f7,...
    ddf6+uf1 df3 df6+uf1 df7+uf1 f1+uf1 uf3 uf5 uf6,...
    ddf4 df1 df4 f5 df6+uf2 uf1 f7 f6,...
    ddf5+f7 df2 df5+f5 df6+f5 df7+f5 uf1 uf3 uf5,...
    df1 df5 f1 f3 uf1 f7 f6 f5,...
    ddf4+f6 df1 df4 df6+f6 H1+uH3 dH6+uH4,...
    ddf2+uf4 ddf6+uf3 df2 df4+uf2 df6 uf2 f2+uf3 uf4,...
    ddf3+uf3 ddf7 df3+uf2 df5_+f7 df7 uH1 H6,... % 突一拍
    ...% 慢慢喜欢你
    ddH5_+dH5_+H7 ddH5+dH5+uH1 ddH6+dH6+uH2,...% 变拍
    dfd1+ufd3 dfd5+fd5 fd1+ufd4 df5+uf3 uf2 ddfd3+ufd2 ddfd7+fd5,...
    dfd6_+ufd3 ddf7+uf2 ddf7+f7 dfd6+ufd1 fd3+ufd2 f7 dfd5+ufd1 fd3+ufd2 f7,...
    dfd5_+ufd1 fd1 fd5_ fd1,...
    ddfd3+fd5 dfd1+ufd1 dfd3+ufd1 dfd1+fd5 ddfd2+fd5_ ddfd6+ufd1 dfd5_+ufd1 ddfd6+fd5_,...
    ddfd2+fd4 ddfd6 dfd2 ddfd6 ddfd5 dfd2 dfd5 dfd2+ufd1,...
    dfd1+ufd1 dfd5 fd1 fd2 dF2+dF3+dF5+F1+F3
    ];

%% Processes before play
s = s/max(s);%Balance the amplitude never greater than 1
audiowrite('C:\Users\74575\Desktop\matlabfile\2018神曲迷你串烧.mp4',s,fs);%Save the music to a file
sound(s,fs);%Play the sound