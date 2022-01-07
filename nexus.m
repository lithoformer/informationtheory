function z = nexus(string1,string2)

if nargin ~= 2

	error('please enter two strings');

end

if length(string1) ~= length(string2)

	error('strings are not the same length');

end

x = double(string1);

y = double(string2);

z = (x - y);

nexus0 = sum(abs(z),'all');
ascii0 = abs(sum(z,'all'));

disp(ascii0);
disp(nexus0);

disp(ascii0/nexus0/length(string1));

end