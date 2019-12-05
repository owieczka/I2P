DispVectorX=[];
DispVectorR=[];

%Start
rmin = 2.8;
%rmin = 2.98;
rmax = 3.577;
%rmax = 3.01;
rstep = 0.0001;
%rstep = 0.00001;
last = 100;
n = 1000;
rmin = exp(exp(exp(rmin)/10)/10)/20
rmax = exp(exp(exp(rmax)/10)/10)/20
rgrid = rmin:rstep:rmax;
rgrid = log(log(rgrid*10)*10);
%for r=rmin:rstep:rmax
VectorX=CreateVector2(rgrid',n,0.5);
VectorR=rgrid'*ones(1,size(VectorX,2));

DispVectorX = VectorX(:,end-last:end);
DispVectorR = VectorR(:,end-last:end);

DispVectorX = DispVectorX(:);
DispVectorR = DispVectorR(:);

plot(exp(exp(exp(DispVectorR)/10)/10)/20,DispVectorX,'.');
axis([rmin rmax 0.3 1]);

%plot(exp(exp(DispVectorR)/10)/10,DispVectorX,'.');

%grid = exp(exp(DispVectorR)/10)/10
%log(10*log(grid*10)) = DispVectorR