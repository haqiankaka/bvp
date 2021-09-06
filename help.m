syms ax bx cx dx ex fx
syms ay by cy dy ey fy
syms t
x = ax*t^5 + bx*t^4 + cx*t^3 + dx*t^2 +ex*t+fx;% x
y = ay*t^5 + by*power(t,4) +cy*power(t,3) +dy*power(t,2) +ey*t+fy;% y
diff_x = gradient(x,t); %diff_x
diff_y = gradient(y,t); %diff_y
diff_diff_x = gradient(diff_x,t); %diff_diff_x
diff_diff_y = gradient(diff_y,t); %diff_diff_y
v= sqrt(diff_x ^2 + diff_y^2); %v
w = (diff_x  * diff_diff_y - diff_y * diff_diff_x)/(diff_x ^2 + diff_y^2);%w
diff_v = gradient(v,t);% diff_v
diff_w = gradient(w,t);%diff_w
jerk_v = gradient(diff_v,t);%jerk_v
jerk_w = gradient(diff_w,t);%jerk_w