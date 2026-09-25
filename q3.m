clear; clc; close all;
%heaviside / echelon unitaire
%t = -10:0.001:10;
%u= heaviside(t); %||u = (t>=0);
%plot(t,u), axis([-10 10, -2 2]), grid
%signe

%sgn = sign(t);
%plot(t,sgn), axis([-10 10, -2 2]), grid

%dirac

%dira = dirac(t);
%idx = dira == inf;
%dira(idx) = 1;
%plot(t, dira),axis([-10 10, -2 2]), grid

%sin & sinc
%t = -2*pi:pi/10:2*pi;
%y0= sin(t);
%y1= sinc(t);
%subplot(1,2,1),plot(t,y0), grid
%subplot(1,2,2),plot(t,y1), grid

%signal rectangulaire

%t = -5:0.01:5;
%width = 4;
%rect = rectpuls(t,width);
%plot(t,rect);
%axis ([-5 5 -0.5 1.5]);
%title('signal rect');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on

%signal triangulaire

%t = -5:0.01:5;
%width = 4;
%tri = tripuls(t,width);
%plot(t,tri);
%axis ([-5 5 -0.5 1.5]);
%title('signal tri');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on

%t = -5:0.01:5;
%u = (t>=0);
%rampe = t.*u;
%plot(t, rampe);
%axis ([-5 5 -0.5 5.5]);
%title('Rampe unitaire');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on;
%

%t = -2:0.001:2;

%subplot(3,1,1);
%width_rect = 1;
%rect = rectpuls(t,width_rect);
%plot(t,rect);
%axis([-2 2 -0.5 1.5]);
%title('signal rect');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on
%
%subplot(3,1,2);
%width = 1;
%tri = tripuls(t,width);
%plot(t,tri);
%axis([-2 2 -0.5 1.5]);
%title('signal tri');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on
%
%subplot(3,1,3);
%y = 4*sin(2*pi*3*t);
%plot(t,y);
%axis([-2 2 -4.5 4.5]);
%title('signal sin');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on

%q4

%t = -5:0.001:5;
%subplot(2,2,1);
%width = 4;
%x = tripuls(t,width);
%plot(t,x);
%axis([-3 3 -0.5 1.5]);
%title('signal tri');
%xlabel('Temps(t)');
%ylabel('Amplitude');
%grid on;
%
%subplot(2,2,2);
%
%x_retar = interp1(t,x,t-1,'linear',0);
%plot(t,x_retar);
%axis([-3 3 -0.5 1.5]);
%title('signal x(t-1)');
%grid on;
%
%subplot(2,2,3);
%
%x_retour = interp1(t,x,-t,'linear',0);
%plot(t,x_retour);
%axis([-3 3 -0.5 1.5]);
%title('signal x(-t)');
%grid on;
%
%subplot(2,2,4);
%
%x_comp = interp1(t,x,2*t,'linear',0);
%plot(t,x_comp);
%axis([-3 3 -0.5 1.5]);
%title('signal x(2t)');
%grid on;
%


dt = 0.001;
t = -2: dt:2;
width = 0.8;
p = rectpuls(t, width);
figure('Color', 'W');
plot(t,p, 'LineWidth', 1.5, 'Color', 'b');
grid on;
axis([-2 2 -0.2 1.2]);
xlabel('Temps(t)');
ylabel('Amplitude');
title('signal porte rectpuls(t,0.8)');
E_num = trapz(t,abs(p)^2);
fprintf('Energie calc = %.4fn', E_num);
P_obs = E_num/(t(end) - t(1));
