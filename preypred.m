function preypred(x,y,alpha,beta,gamma,delta,state)
global alpha beta gamma delta
t0 = 0;
tfinal = 30;
y0=[x;y];
[t,y] = ode45(@lotka1,[t0 tfinal],y0);
if (state==0)
    plot (t,y)
    title('Хищники/Жертвы численность со временем')
    xlabel('Время')
    ylabel('Популяция')
end
if(state==1)
    plot(y(:,1),y(:,2))
    title('График фазового пространства')
    xlabel('Численность жертв')
    ylabel('Численность хищников')
end