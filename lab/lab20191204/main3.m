amin=-2;
amax=+2;
stepa=0.03;
bmin=-2;
bmax=+2;
stepb=0.03;

FractalImage = DrawFractal(amin,amax,stepa,bmin,bmax,stepb);
imwrite(FractalImage,'MyImage.png');