function [output] = asciilists(a)

ppp = perms(a);

comps = size(ppp);

p = comps(1);

arr = zeros(p,1);

for loop = 1:p

	arr(loop) = ascii_distance(char(ppp(loop,1)),char(ppp(loop,2)));

end

[mn,i] = max(arr,[],1);
[mx,j] = min(arr,[],1);

disp(ppp(i,1));
disp(ppp(i,2));
disp(mn);

disp(ppp(j,1));
disp(ppp(j,2));
disp(mx);

end