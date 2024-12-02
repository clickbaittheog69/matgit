% function[cp] = Activity_C(phrase)
% phrase = 'the home is a beautiful place';
phrase(1) = upper(phrase(1));
ind = find(isspace(phrase));
phrase(ind+1) = upper(phrase(ind+1));
cp = phrase;
% end