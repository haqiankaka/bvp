function u =opt_func(x) 
last_x = 0;last_y = 0;
last_u = 0;

for t = 0:0.01:1
    res = model_5poly(x,t);
    xt = res(1);
    yt = res(2);
    diff_x = res(3);
    diff_y = res(4);
    linear_vel = res(7);
    angular_vel = res(8);
    linear_jerk = res(11);
    angular_jerk  = res(12);
    
    %opt function
    u = last_u+linear_jerk^2 + linear_jerk^2;
    
    last_u = u;
    plot(xt,yt,'*');
    hold on
end

end