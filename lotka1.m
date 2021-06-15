function yp=lotka1(t,y)
global alpha beta gamma delta
yp = [alpha*y(1) - beta*y(1)*y(2); -gamma*y(2) + delta*y(1)*y(2)];