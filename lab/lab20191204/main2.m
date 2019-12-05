amin=-2;
amax=+2;
stepa=0.05;
bmin=-2;
bmax=+2;
stepb=0.05;

FractalImage = zeros((amax-amin)/stepa+1,(bmax-bmin)/stepb+1);
y=1;
for m=amin:stepa:amax
  x=1;
  for n=bmin:stepb:bmax
    z = m+i*n;
    IsGoingToInf = CheckInf(z,100);
    FractalImage(y,x) = IsGoingToInf;
    x=x+1;
  end
  y=y+1;
end

imagesc(FractalImage);