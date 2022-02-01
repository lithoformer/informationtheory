function z = nexus0(input0)

if nargin ~= 1

    error('please enter an integer');

end

size0 = size(input0);

if size0(1,1) ~= 1

    error('please enter an integer');

end

if size0(1,2) ~= 1

    error('please enter an integer');

end

rng('shuffle');

a = 33;
b = 126;

string0 = (b-a).*rand(input0,1) + a;
string1 = (b-a).*rand(input0,1) + a;

x = char(floor(string0));
y = char(floor(string1));

z = (x - y);

ascii0 = sum(abs(z),'all');
ascii1 = abs(sum(z,'all'));

disp(ascii0);
disp(ascii1);

disp(ascii1/ascii0/input0);

end
