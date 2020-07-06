clear; clf; hold off; n=0; h=0.0001;

cM = [1 1 1; 1 1 2; 1 1 3; 1 2 3; 1 2 2; 2 3 3; 3 5 6; 4 4 4; 5 6 7]
cC = 1
for t=1:1:9
    cM(t,1);
    cM(t,2);
    cM(t,3);
    % Constantes del Sistema
    m1=1; l=cM(t,1); k1=m1*l^2;
    % Constantes para cambiar
    m2=1; n=cM(t,2); k2=m2*n^2;
    m3=1; p=cM(t,3); k3=m3*p^2;
    n2 = n
    % Condiciones Iniciales
    x = 1; vx = 0; z = 1; vz = 0; y =-1; vy = 0;
    ax = -k1*x/m1;  
    ay = -k2*y/m2; 
    az = -k3*z/m3; 
    tfin=100; n=0;
    % Inicio de la Simulacion
    px(1)=x; py(1)=y; pz(1)=z;
    for t=0:h:tfin
        n  = n+1;
        ax =-k1*x/m1;
        vx = vx + ax*h;
        x  = x  + vx*h;
        ay =-k2*y/m2;
        vy = vy + ay*h;
        y  = y  + vy*h;
        az =-k3*z/m3;
        vz = vz + az*h;
        z  = z  + vz*h;
        px(n+1)=x;
        py(n+1)=y;
        pz(n+1)=z;
    end
    subplot(3,3,cC)
    plot3(px,py,pz)
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title([num2str(l),' : ',num2str(n2), ' : ',num2str(p)])
    grid on;
    cC = cC + 1;
end

