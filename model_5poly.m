function pos = X(x,t)

    pos(1) = x(1)*t^5 + x(2)*t^4 + x(3)*t^3 + x(4)*t^2 +x(5)*t+x(6);% x
    pos(2) = x(7)*t^5 + x(8)*power(t,4) + x(9)*power(t,3) + x(10)*power(t,2) +x(11)*t+x(12);% y
    pos(3) = gradient(pos(1),t); %diff_x
    pos(4) = gradient(pos(2),t); %diff_y
    pos(5) = gradient(pos(3),t); %diff_diff_x
    pos(6) = gradient(pos(4),t); %diff_diff_y
    pos(7)= sqrt(pos(3) ^2 + pos(4)^2); %v
    pos(8) = (pos(3)  * pos(6) - pos(5) * pos(4))/(pos(3) ^2 + pos(4)^2);%w
    pos(9) = gradient(pos(7),t);% diff_v
    pos(10) = gradient(pos(8),t);%diff_w
    pos(11) = gradient(pos(9),t);%jerk_v
    pos(12) = gradient(pos(10),t);%jerk_w

end

