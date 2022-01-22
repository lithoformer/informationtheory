function x = nexuski1(input0)

if nargin ~= 1

    error('please enter a string');

end

size0 = size(input0);

if size0(1) ~= 1

    error ('please enter a string');

end

length0 = size0(2);

rng('shuffle');

a = 32;
b = 127;

string0 = (b-a).*rand(length0,1) + a;

x = char(floor(string0));

disp(x');

end
