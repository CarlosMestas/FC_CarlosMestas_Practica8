clear; clf; hold off; n=0; h=0.0001;
% Constantes del Sistema
 m1=1; l=1; k1=m1*l^2;
% Constantes para cambiar
 m2=1; n=1; k2=m2*n^2;
% Condiciones Iniciales
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
% Inicio de la Simulacion
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,1)
plot(px,py)
title('l = 1 y n = 1')
%%%%%%%%%%%%%%%%%%
m1=1; l=1; k1=m1*l^2;
m2=2; n=2; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
% Inicio de la Simulacion
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,2)
plot(px,py)
title('l = 1 y n = 2')
%%%%%%%%%%%%%%%%%%
m1=1; l=1; k1=m1*l^2;
m2=1; n=3; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,3)
plot(px,py)
title('l = 1 y n = 3')
%%%%%%%%%%%%%%%%%%
m1=1; l=2; k1=m1*l^2;
m2=1; n=3; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,4)
plot(px,py)
title('l = 2 y n = 3')
%%%%%%%%%%%%%%%%%%
m1=1; l=3; k1=m1*l^2;
m2=1; n=4; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,5)
plot(px,py)
title('l = 3 y n = 4')
%%%%%%%%%%%%%%%%%%
m1=1; l=3; k1=m1*l^2;
m2=1; n=5; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,6)
plot(px,py)
title('l = 3 y n = 5')
%%%%%%%%%%%%%%%%%%
m1=1; l=4; k1=m1*l^2;
m2=1; n=5; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,7)
plot(px,py)
title('l = 4 y n = 5')
%%%%%%%%%%%%%%%%%%
m1=1; l=5; k1=m1*l^2;
m2=1; n=6; k2=m2*n^2;
x = 1; vx = 0; y = 0; vy = 0.3;
ax = -k1*x/m1;  
ay = -k2*y/m2; 
tfin=100; n=0;
px(1)=x; py(1)=y;
for t=0:h:tfin
    n  = n+1;
    ax =-k1*x/m1;
    vx = vx + ax*h;
    x  = x  + vx*h;
    ay =-k2*y/m2;
    vy = vy + ay*h;
    y  = y  + vy*h;
    px(n+1)=x;
    py(n+1)=y;
end
subplot(4,2,8)
plot(px,py)
title('l = 5 y n = 6')
