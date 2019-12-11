function []=DrawRectangle(x1,y1,x2,y2,x3,y3)
%Make drawing of traingle
DrawLine(x1,y1,x2,y2); 
DrawLine(x2,y2,x3,y3); 
DrawLine(x3,y3,x1,y1); 
end