function []=DrawCarpetLevel(sx,sy,ex,ey)
subwidth = (ex-sx)/3;
subheight = (ey-sy)/3;
DrawRectangle(sx,sy,ex,ey);
for i=0:2
  for j=0:2
    if i==1 && j==1
      DrawRectangle(sx+i*subwidth,sy+j*subheight,sx+(i+1)*subwidth, sy+(j+1)*subheight);
    else
      DrawCrossBox(sx+i*subwidth,sy+j*subheight,sx+(i+1)*subwidth, sy+(j+1)*subheight);
    end
  end
end
end