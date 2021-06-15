function [x1, x2, x3] = graphik(T1, T2, beta, alpha2,beta2,x1_0,x2_0,x3_0,x_goal, state)
step=0.01;
mass = 1:step:100;
size = length(mass);

x1 = zeros(1,size);
x2 = zeros(1,size);
x3 = zeros(1,size);

x1(1) = x1_0;
x2(1) = x2_0;
x3(1) = x3_0;
for i = 2:size
                            
    f1 = x3(i-1)*x1(i-1) - beta*x1(i-1)*x2(i-1);
    f2 = -alpha2*x2(i-1) + beta2*x1(i-1)*x2(i-1);
               
    fi = -(x1(i-1)-x_goal)/(T2*x1(i-1))+beta*x2(i-1);
    dfi = -(x_goal/(T2*(x1(i-1))^2))*f1 + beta*f2;
    psi_1 = x3(i-1) - fi;
    U = -psi_1/T1 + dfi;
                         
    x1(i) = x1(i-1) + step * f1;
    x2(i) = x2(i-1) + step * f2;
    x3(i) = x3(i-1) + step * U;
    if(i==55)
        disp (x1(i));
    end
end
if (state==0)
    mas_plot = 1:size;
    plot(mas_plot, x1, 'b', mas_plot, x2, 'r', mas_plot, x3, 'g',mas_plot, x2_0, 'k');
    ylabel('X,Y,Z');
    title('Хищник-жертва с питанием');
end
if(state==1)
    plot(x1(:), x2(:));
    title('График фазового пространства')
    xlabel('Численность жертв')
    ylabel('Численность хищников')
end
    
