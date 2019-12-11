%Drawing a single line between to points
%Naive approach
sx = 1;
sy = 2;
ex = 4;
ey = 6;

stepx = ;
stepy = ;

x = sx:stepx:ex;
y = sy:stepy:ey;

plot(x,y);

%Correct Solution
x = [sx ex];
y = [sy ey];

plot(x,y);

%Using a DrawLine Function
DrawLine(sx,sy,ex,ey);

%Drawing a rectangle



