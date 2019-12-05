DispVectorX=[];
DispVectorR=[];

%Start
%rmin = 2.8;
rmin = 2.9;
%rmax = 4.0;
rmax = 3.0;
rstep = 0.001;
last = 10;
n = 10000;
rmin = exp(exp(rmin)/10)/10
rmax = exp(exp(rmax)/10)/10
rgrid = rmin:0.0001:rmax;
rgrid = log(log(rgrid*10)*10);
%for r=rmin:rstep:rmax
for r = rgrid
  VectorX=CreateVector(r,n,0.5);
  VectorR=r*ones(1,length(VectorX));

  DispVectorX = [DispVectorX,VectorX(end-last:end)];
  DispVectorR = [DispVectorR,VectorR(end-last:end)];
  %plot(exp(exp(DispVectorR)/10)/10,DispVectorX,'.');
  %axis([rmin rmax 0 1]);
  %pause(0.01);
  %disp('.');
end
plot(exp(exp(DispVectorR)/10)/10,DispVectorX,'.');

%grid = exp(exp(DispVectorR)/10)/10
%log(10*log(grid*10)) = DispVectorR