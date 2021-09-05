function [c,ceq] = constraint(x)
%c = (x(1)-1/3)^2 + (x(2)-1/3)^2 - (1/3)^2;
for t = 0: 0.1:1
   % xt = x(1)*t^2 + x(2)*t + x(3);
    %yt = x(4)*t^3 + x(5)*t^2+x(6)*t+x(7);
    traj = model_5poly(x,t);
    
   c(1) = abs(traj(7)) - 0.01;
   print traj(7)
   c(2) = abs(traj(8)) - 2;
end
c = [];
ceq = [];
end