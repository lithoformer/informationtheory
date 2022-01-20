function [output] = ascii_distance(string1,string2)

if nargin ~= 2

	error('please enter two strings');

end

if length(string1) ~= length(string2)

	error('strings are not the same length');

end

x = double(string1);

y = double(string2);

z = (x - y);

ascii1 = sum(abs(z),'all');
ascii0 = abs(sum(z,'all'));

output = ascii1;

end