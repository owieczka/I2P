function []=DrawSnowFlake(sx,sy,l,angle,n);
if n<=1
  DrawSnowSegment(sx,sy,l,angle);
else
  sl = l/( 2 + 2/sqrt(2));
  ex = sx+sl*cos(angle);
  ey = sy+sl*sin(angle);
  DrawSnowFlake(sx,sy,sl,angle,n-1);
  sx = ex;
  sy = ey;
  ex = ex+sl*cos(angle+pi/4);
  ey = ey+sl*sin(angle+pi/4);
  DrawSnowFlake(sx,sy,sl,angle+pi/4,n-1);
  sx = ex;
  sy = ey;
  ex = ex+sl*cos(angle+pi/4-pi/2);
  ey = ey+sl*sin(angle+pi/4-pi/2);
  DrawSnowFlake(sx,sy,sl,angle+pi/4-pi/2,n-1);
  sx = ex;
  sy = ey;
  ex = ex+sl*cos(angle+pi/4-pi/2+pi/4);
  ey = ey+sl*sin(angle+pi/4-pi/2+pi/4);
  DrawSnowFlake(sx,sy,sl, angle+pi/4-pi/2+pi/4,n-1);
end
end