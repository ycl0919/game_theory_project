function g = subgradient(f,x)
% 计算实值函数 f(x) 在 x 处的次梯度向量 g(x)
%
% 输入参数：
% f: 函数句柄，用来表示实值函数 f(x)
% x: n 维向量，表示函数 f 的自变量
%
% 输出参数：
% g: n 维向量，表示函数 f 在 x 处的次梯度向量

n = size(x,2);
g = zeros(n,1);
eps = 1e-8; % 次梯度计算中的步长参数
fx = f(x);

for i = 1:n
    e = zeros(1,n);
    e(1,i) = 1;
    g(i) = (f(x+eps*e) - fx) / eps;
end