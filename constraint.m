function [c,ceq] = constraint(x)
%c = (x(1)-1/3)^2 + (x(2)-1/3)^2 - (1/3)^2;
for t = 0:0.1:1
    % xt = x(1)*t^2 + x(2)*t + x(3);
    %yt = x(4)*t^3 + x(5)*t^2+x(6)*t+x(7);
    %traj = model_5poly(x,t);
    
    c(1) = 2^(1/2)*((5*x(1)*t^4 + 4*x(2)*t^3 + 3*x(3)*t^2 + 2*x(4)*t + x(5))^2)^(1/2) - 0.02
    
    % c(2) = traj(8) -2;
end

ceq = [];
end