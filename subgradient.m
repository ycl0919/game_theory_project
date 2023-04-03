function g = subgradient(f,x)

n = size(x,2);
g = zeros(n,1);
eps = 1e-8;
fx = f(x);

for i = 1:n
    e = zeros(1,n);
    e(1,i) = 1;
    g(i) = (f(x+eps*e) - fx) / eps;
end