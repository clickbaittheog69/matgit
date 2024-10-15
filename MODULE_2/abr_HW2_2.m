
%input funcs
r = input('Enter circle radius: ');
x = input('Enter x center point: ');
y = input('Enter y center point: ');

%diameter
d = r*2;

%area
a = (pi)*r^2;

%circumference
c = 2*pi*r;

%for the circle equation
rsqr = r^2;

%for the extra displays
fprintf('Circle diameter: %.3f\n',d);
fprintf('Circle area: %.3f\n',a);
fprintf('Circle circumference: %.3f\n',c);
fprintf('Circle equation: (x-%.3f)^2 + (y-%.3f)^2 = %.3f', x,y,rsqr);

