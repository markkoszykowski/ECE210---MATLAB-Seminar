function [ext, inf] = main(x,y)
dydx = diff(y)./diff(x);
ext = signSwitch(dydx);
d2ydx2 = diff(dydx)./diff(x(2:end));
inf = signSwitch(d2ydx2);
figure;
plot(x,y,x(ext),y(ext),'ko',x(inf),y(inf),'r*');
end

function [i] = signSwitch(v)
u = v;
u(2:end)=v(1:end-1);
z = u.*v;
i = find(z<0);
end