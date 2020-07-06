clear; clf; hold off; n=0; h=0.0001;
% Constantes del Sistema
 m1=1; l=1; k1=m1*l^2;
% Constantes para cambiar
 m2=1; n=1; k2=m2*n^2;
% Condiciones Iniciales
x = 1; vx = 0; y =-1; vy = 0.3;
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
plot(px,py)