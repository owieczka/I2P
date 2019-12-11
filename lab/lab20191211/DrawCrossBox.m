function []=DrawCrossBox(sx,sy,ex,ey)
%Make drawing of crossed box
DrawRectangle(sx,sy,ex,ey);
DrawLine(sx,sy,ex,ey);
DrawLine(sx,ey,ex,sy);
end