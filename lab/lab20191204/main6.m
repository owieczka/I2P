DispVectorX=[];
DispVectorR=[];

%Start
rmin = 2.3;
rmax = 4.2;
rstep = 0.001;
last = 100;
n = 1000;

for r=rmin:rstep:rmax
  VectorX=CreateVector(r,n,0.5);
  VectorR=r*ones(1,length(VectorX));

  DispVectorX = [DispVectorX,VectorX(end-last:end)];
  DispVectorR = [DispVectorR,VectorR(end-last:end)];
end
plot(DispVectorR,DispVectorX,'.');