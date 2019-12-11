function []=DrawRectangle(sx,sy,ex,ey)
%Make drawing of rectangle
DrawLine(sx,sy,ex,sy); %--->  |
DrawLine(ex,sy,ex,ey); %      v
DrawLine(ex,ey,sx,ey); %<---
DrawLine(sx,ey,sx,sy); %      ^
                       %      |
end