function f
fprintf('\n \tRESOLUCION DE ECUACIONES DIFERENCIALES POR MEDIO RUNGE-KUTTA DE ORDEN 4\n')
f=input('\n Ingrese la ecuacion diferencial dy/dx=\n','s');
x0=input('\n primer val x0:\n');
x1=input('\n segundo val x1:\n');
y0=input('\n Ingrese la condicion inicial y(x0):\n');

h=(x1-x0)/10;
xs=x0:h:x1;

for i=1:10
it=i-1;
x0=xs(i);
x=x0;
y=y0;
k1=h*eval(f);
x=xs(i+1);
y=y0+k1;
k2=h*eval(f);
y0=y0+(k1+k2)/2;

end
fprintf('\n El punto aproximado y(x1) es = %8.6f\n',y0);

%y´=4e^0.8x-0.5y
%4*exp(0.8*x)-0.5*y

%dy/dx=yx^2-1.2y
%y*x^2-1.2*y

%mostrar grafica
% ezplot '4*exp(0.8*x)-0.5*y'
% grid on