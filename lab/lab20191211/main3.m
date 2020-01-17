%Draw a showflake segment
sx = -9;
sy = -9;
angle = pi/4;
l = 18*sqrt(2);

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 1)
%Make drawing
DrawSnowSegment(sx,sy,l,angle);
%End Drawing
EndDrawing();


%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 2)
%Make drawing
DrawSnowFlake(sx,sy,l,angle,6);
%End Drawing
EndDrawing();