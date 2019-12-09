h = input('\nPlease enter initial height in meters: ');

    if h <= 0
        error('height cannot be zero, try again!')
    end

v = input('\nPlease enter initial velocity in m/s: ');
deg = input('\nPlease enter angle with respect to the x-axis: ');
angle = (deg.*(pi/180));
ax = input('\nConsidering the sign, please enter the x compenent of the acceleration in m/s^2: ');
ay = input('\nConsidering the sign, please enter the y compenent of the acceleration in m/s^2: ');
     
    if ay == 0
        error('No free fall, try again!')
    end


vx = v*cos(angle);
vy = v*sin(angle);

t = 0;
a = 0;
b = h;
disp = 0.00001;



while h > 0
    
    t = disp+1;
    a = ((vx*t)+(ax/2)*(t^2));
    b = ((vy*t)+(ay/2)*(t^2)+h); 
        
end

grid on
plot(a,b,':','linewidth',1)
title('Trajectory of a projectile for both ideal and non-ideal motion')
xlabel('X-Position')
ylabel('Y-Position')