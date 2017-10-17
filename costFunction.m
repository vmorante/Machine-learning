function[J,grad] =lrCostFunction (theta,X,y,lambda)
g = sigmoide(theta'*X');
g = g';
m = rows(X);
grad = 1 / m .*sum((g.-y).*X.+lambda/m.*theta');
grad = grad';
sumaj = sum(-y .* log(g) - (1 - y) .* log(1 - g) .+ lambda/(2*m)*sum((theta.^2)));
J = (1/m)*sumaj;
endfunction
