DispVectorX=[];
DispVectorR=[];

%Start
rmin = 2.3;
rmax = 4.2;
rstep = 0.001;
for r=rmin:rstep:rmax
  VectorX=CreateVector(r,100,0.5);
  VectorR=r*ones(1,length(VectorX));

  DispVectorX = [DispVectorX,VectorX(end-10:end)];
  DispVectorR = [DispVectorR,VectorR(end-10:end)];
end
plot(DispVectorR,DispVectorX,'.');