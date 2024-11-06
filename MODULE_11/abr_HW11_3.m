clc; clear; 
msg = input('Enter secret message: ', 's');

for ii = 1:length(msg)
    if isstrprop(msg(ii),'wspace') || isstrprop(msg(ii),'punct')
    emsg(ii) = msg(ii);
    else
        emsg(ii) = 'z'- (msg(ii)-'a');
    end
end
emsg = char(emsg);
fprintf('%s', emsg)