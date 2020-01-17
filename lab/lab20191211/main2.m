%Draw a carpet level
sx = 1;
sy = 2;
ex = 4;
ey = 6;

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 1)
%Make drawing
DrawCarpetLevel(sx,sy,ex,ey);
%End Drawing
EndDrawing();

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 2)
%Make drawing
DrawCarpet(sx,sy,ex,ey,2);
%End Drawing
EndDrawing();

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 3)
%Make drawing
DrawCarpet2(sx,sy,ex,ey,2);
%End Drawing
EndDrawing();