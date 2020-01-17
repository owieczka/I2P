function []=DrawCarpet2(sx,sy,ex,ey,n)
subwidth = (ex-sx)/3;
subheight = (ey-sy)/3;
for i=0:2
  for j=0:2
    if i==1 && j==1
    else
      if n<=1
        DrawCrossBox(sx+i*subwidth,sy+j*subheight,sx+(i+1)*subwidth, sy+(j+1)*subheight);
      else
        DrawCarpet(sx+i*subwidth,sy+j*subheight,sx+(i+1)*subwidth, sy+(j+1)*subheight,n-1);
      end
    end
  end
end
end