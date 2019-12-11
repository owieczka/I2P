%Drawing a Rectangle
%Naive approach
sx = 1;
sy = 2;
ex = 4;
ey = 6;

DrawLine(sx,sy,ex,sy); %--->  |
hold on 
DrawLine(ex,sy,ex,ey); %      v
DrawLine(ex,ey,sx,ey); %<---
DrawLine(sx,ey,sx,sy); %      ^
                       %      |
axis([-10 10 -10 10]);
hold off

%Initialize drawing
figure(2)              %------\
hold on                %       > this can be a function
axis([-10 10 -10 10]); %------/
%Make drawing
DrawLine(sx,sy,ex,sy); %--->  
DrawLine(ex,sy,ex,ey); %      v
DrawLine(ex,ey,sx,ey); %<---
DrawLine(sx,ey,sx,sy); %      ^
                       %      |
%End Drawing
hold off


%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 3)
%Make drawing
DrawLine(sx,sy,ex,sy); %--->  
DrawLine(ex,sy,ex,ey); %      v
DrawLine(ex,ey,sx,ey); %<---
DrawLine(sx,ey,sx,sy); %      ^
                       %      |
%End Drawing
EndDrawing();


%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 4)
%Make drawing
DrawRectangle(sx,sy,ex,ey);
%End Drawing
EndDrawing();

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 5)
%Make drawing
DrawTriangle(sx,sy,ex,sy,(sx+ex)/2,sy-(ey-sy)/2);
%End Drawing
EndDrawing();


%Draw a simple house

%Initialize drawing
BeginDrawing(-10, 10, -10, 10, 6)
%Make drawing
DrawRectangle(sx,sy,ex,ey);
DrawTriangle(sx,sy,ex,sy,(sx+ex)/2,sy-(ey-sy)/2);
DrawCrossBox(sx+(ex-sx)*1/5,sy+(ey-sy)*1/5,sx+(ex-sx)*2/5,sy+(ey-sy)*2/5)
DrawCrossBox(sx+(ex-sx)*3/5,sy+(ey-sy)*1/5,sx+(ex-sx)*4/5,sy+(ey-sy)*2/5)
%End Drawing
EndDrawing();