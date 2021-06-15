function [T1k,T2k] = check_time1(x1_0,x2_0,x3_0,x_goal,beta,alpha2,beta2,time,pogr,state)
step = 0.01;
find = fopen('time.txt', 'wt');
mass = 1:0.01:100;
size = length(mass);

x1 = zeros(1,size);
x2 = zeros(1,size);
x3 = zeros(1,size);

x1(1) = x1_0;
x2(1) = x2_0;
x3(1) = x3_0;
if (state==0)
for T1 = 0.01:0.01:1
    for T2 = 1:1:10
        for i=2:size
            f1 = x3(i-1)*x1(i-1) - beta*x1(i-1)*x2(i-1);
            f2 = -alpha2*x2(i-1) + beta2*x1(i-1)*x2(i-1);
            fi = -(x1(i-1)-x_goal)/(T2*x1(i-1))+beta*x2(i-1);
            dfi = -(x_goal/(T2*(x1(i-1))^2))*f1 + beta*f2;
            psi_1 = x3(i-1) - fi;
            psi_t = x1(i-1) - x_goal;
            U = -psi_1/T1 + dfi;
            x1(i) = x1(i-1) + step * f1;
            x2(i) = x2(i-1) + step * f2;
            x3(i) = x3(i-1) + step * U;
            rest = abs(psi_t)/x_goal ;       
            if ( rest < pogr && i==time)
                T1k = T1;
                T2k = T2;
                fprintf (find,'%0.2f %10.2f\n', T1, T2);   
                break;
            end
        end
    end  
end
end
if(state==1)
    for T1 = 0.01:0.01:1
        for i=2:size
            psi = x1(i-1) - x_goal;
            u(i) = beta*x2(i-1)- psi*(T1*x1(i-1))^(-1);
            f1= u(i)*x1(i-1)-beta*x1(i-1)*x2(i-1);
            f2 = -alpha2*x2(i-1) + beta2*x1(i-1)*x2(i-1);   
            x1(i) = x1(i-1)+step*f1;
            x2(i) = x2(i-1)+step*f2;
            rest = abs(psi)/x_goal ;       
            if ( rest < pogr && i==time)
                fprintf (find,'%0.2f\n', T1);   
                break;
            end
        end
    end
end
fclose(find);   
                    
                    
                  