function [FractalImage]=DrawFractal2(amin,amax,stepa,bmin,bmax,stepb,z0)
FractalImage = zeros((amax-amin)/stepa+1,(bmax-bmin)/stepb+1);
y=1;
for m=amin:stepa:amax
  x=1;
  for n=bmin:stepb:bmax
    z = m+i*n;
    IsGoingToInf = CheckInf(z,100,z0);
    FractalImage(y,x) = IsGoingToInf;
    x=x+1;
  end
  y=y+1;
end

imagesc(FractalImage);
end