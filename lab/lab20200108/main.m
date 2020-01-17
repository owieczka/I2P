TOL = 0.00001
NMAX = 300
x1=1.5
x2=2.5
N = 1
while N<NMAX
  x0 = (x1+x2)/2;
  if p(x0)==0 || (x2-x1)/2<TOL
    break;
  end
  N=N+1
  if sign(p(x0))==sign(p(x1))
    x1=x0;
  else
    x2=x0;
  end
end
disp(x0);
  