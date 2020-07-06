clear; clf; hold off; n=0; h=0.01;

    % Constantes del Sistema
    m1=1; l=5; k1=m1*l^2;
    % Constantes para cambiar
    m2=1; n=6; k2=m2*n^2;
    n2 = n;
    m3=1; p=7; k3=m3*p^2;
    % Condiciones Iniciales
    x = 1; vx = 0; z = 1; vz = 0; y = 0; vy = 0.3;
    ax = -k1*x/m1;  
    ay = -k2*y/m2; 
    az = -k3*z/m3; 
    tfin=10; n=0;
    % Inicio de la Simulacion
    px(1)=x; py(1)=y; pz(1)=z;
    drawnow;
    frame = getframe(1);
    im = frame2im(frame);        
    [imind,cm] = rgb2ind(im,256);       
    outfile = 'lissajous3DCarlosMestas.gif';
    imwrite(imind,cm,outfile,'gif','DelayTime',0,'loopcount',inf);      

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
        drawnow;
        frame = getframe(1);
        im = frame2im(frame);        
        [imind,cm] = rgb2ind(im,256);       
        imwrite(imind,cm,outfile,'gif','DelayTime',0,'writemode','append');
        plot3(px,py,pz)
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        title([num2str(l),' : ',num2str(n2), ' : ',num2str(p)])
%         pause(0.00000001)
        grid on;  
    end


