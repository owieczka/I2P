%Draw a showflake segment
sx = 0;
sy = 0;
angle = pi/4;
l = 5;

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 1)
%Make drawing
DrawSnowSegment(sx,sy,l,angle);
%End Drawing
EndDrawing();


%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 2)
%Make drawing
DrawSnowFlake(sx,sy,l,angle,3);
%End Drawing
EndDrawing();