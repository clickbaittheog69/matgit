
%inputs for side lengths
sideA = input('Enter side a: ');
sideB = input('Enter side b: ');
sideC = input('Enter side c: ');

%calculations for interior angles

a = acosd((sideB^2+sideC^2-sideA^2)/(2*sideB*sideC));
b = acosd((sideA^2+sideC^2-sideB^2)/(2*sideA*sideC));
c = acosd((sideA^2+sideB^2-sideC^2)/(2*sideB*sideA));

fprintf('Angle A is %.0f degrees, angle B is %.0f degrees and angle C is %.0f degrees!',a,b,c);
