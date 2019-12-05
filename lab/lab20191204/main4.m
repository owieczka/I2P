amin=-2;
amax=+2;
stepa=0.03;
bmin=-2;
bmax=+2;
stepb=0.03;
z0 = 0.5+0.3*i;

q=0;
for z0=0.1:0.01:0.5
  FractalImage = DrawFractal2(amin,amax,stepa,bmin,bmax,stepb,z0);
  fileName = sprintf('MyImage%04d.png',q);
  imwrite(FractalImage,fileName);
  q=q+1;
  disp('.');
end