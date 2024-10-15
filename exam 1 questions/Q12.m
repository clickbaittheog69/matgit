clc; clear;
x= 0;
for k = 1:15
    Tk = k;
    for ks = 3:50
        Tk = Tk - (k^ks)/(ks+1);
    end
    x = Tk/(5^k) + x;
end
fprintf('%g\n', x)




y= 0;
for l = 1:15
    r = l;
    for jj = 3:50
        r = r-(l^jj)/(jj+1);
    end
    y = y + r/(5^l);
end
fprintf('%g', y)

