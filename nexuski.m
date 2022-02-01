function z = nexuski(input0)

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

test1 = (b-a).*rand(input0,1)' + a;
test2 = (b-a).*rand(input0,1)' + a;

x = char(floor(test1));
y = char(floor(test2));

x0 = x;
y0 = y;

for l = 1:input0

    x0 = [x0;x];
    y0 = [y0;y];

end

z = (x0 - y0);

nexus5 = sum(abs(z),'all');
ascii5 = abs(sum(z,'all'));

disp(nexus5);
disp(ascii5);

disp(ascii5/nexus5/input0);

end
