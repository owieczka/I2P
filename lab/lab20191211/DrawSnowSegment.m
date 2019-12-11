function []=DrawSnowSegment(sx,sy,l,angle);
%Drawing a segment of showflake
sl = l/( 2 + 2/sqrt(2));
ex = sx+sl*cos(angle);
ey = sy+sl*sin(angle);
DrawLine(sx,sy,ex,ey);
sx = ex;
sy = ey;
ex = ex+sl*cos(angle+pi/4);
ey = ey+sl*sin(angle+pi/4);
DrawLine(sx,sy,ex,ey);
sx = ex;
sy = ey;
ex = ex+sl*cos(angle+pi/4-pi/2);
ey = ey+sl*sin(angle+pi/4-pi/2);
DrawLine(sx,sy,ex,ey);
sx = ex;
sy = ey;
ex = ex+sl*cos(angle+pi/4-pi/2+pi/4);
ey = ey+sl*sin(angle+pi/4-pi/2+pi/4);
DrawLine(sx,sy,ex,ey);
end