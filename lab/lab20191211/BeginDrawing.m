function []=BeginDrawing(minx, maxx, miny, maxy, figureNumber)
%Initialize drawing
figure(figureNumber);
DrawRectangle(minx,miny,maxx,maxy);
hold on             
axis([minx maxx miny maxy]);
end