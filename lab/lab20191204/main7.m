DispVectorX=[];
DispVectorR=[];

%Start
rmin = 2.8;
rmax = 4.2;
rstep = 0.001;
last = 10;
n = 100;

for r=rmin:rstep:rmax
  VectorX=CreateVector(r,n,0.5);
  VectorR=r*ones(1,length(VectorX));

  DispVectorX = [DispVectorX,VectorX(end-last:end)];
  DispVectorR = [DispVectorR,VectorR(end-last:end)];
  plot(DispVectorR,DispVectorX,'.');
  axis([rmin rmax 0 1]);
  pause(0.01);
end
