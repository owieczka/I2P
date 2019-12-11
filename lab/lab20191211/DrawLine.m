function []=DrawLine(sx,sy,ex,ey)
%Drawing a single line between to points
x = [sx ex];
y = [sy ey];
plot(x,y);
end