function sse = errorFunction(x,y,c,d)
% sum of squared errors (sse) 

% extract x and y 
if c>d
    [c,d]=deal(d,c);
end
x = x(c:d);
y = y(c:d);

% least squares solution 
X     = [ones(size(x)) x];
theta = X'*X\X'*y; % not the best implementation but okay for this demo. 

% Extract coefficients
a = theta(1);
b = theta(2);
yhat = a + b*x;
sse  = sum((yhat-y).^2);
end
