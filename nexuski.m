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

a = 32;
b = 127;

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

nexus0_ = sum(abs(z),1);
nexus0 = sum(abs(nexus0_),1);
nexus1_ = sum(abs(z),2);
nexus1 = sum(abs(nexus1_),1);
nexus2_ = sum(abs(z),3);
nexus2 = sum(abs(nexus2_),2);
nexus3_ = sum(abs(z),4);
nexus3 = sum(abs(nexus3_),3);
nexus4_ = sum(abs(z),5);
nexus4 = sum(abs(nexus4_),4);
nexus5 = sum(abs(z),'all');

ascii0_ = abs(sum(z,1));
ascii0 = abs(sum(ascii0_,1));
ascii1_ = abs(sum(z,2));
ascii1 = abs(sum(ascii1_,1));
ascii2_ = abs(sum(z,3));
ascii2 = abs(sum(ascii2_,2));
ascii3_ = abs(sum(z,4));
ascii3 = abs(sum(ascii3_,3));
ascii4_ = abs(sum(z,5));
ascii4 = abs(sum(ascii4_,4));
ascii5 = abs(sum(z,'all'));

%disp(nexus0);
%disp(nexus1);
%disp(nexus2);
%disp(nexus3);
%disp(nexus4);
disp(nexus5);

%disp(ascii0);
%disp(ascii1);
%disp(ascii2);
%disp(ascii3);
%disp(ascii4);
disp(ascii5);

disp(ascii5/nexus5/input0);

end