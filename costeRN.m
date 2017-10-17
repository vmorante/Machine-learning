function [ J grad ] = costeRN(params_rn , num_entradas , num_ocultas ,num_etiquetas
, X,y ,lambda )
Theta1 = reshape (params_rn (1: num_ocultas * ( num_entradas + 1) )
,num_ocultas , ( num_entradas + 1) ) ;
Theta2 = reshape (params_rn ((1 + (num_ocultas * ( num_entradas + 1) ) ) :
end ) , num_etiquetas,( num_ocultas+ 1) ) ;
J = 0;
grad1 = zeros(size(Theta1));
grad2 = zeros(size(Theta2));
vector = ones(rows(X),1);
X=[vector X];
m=size(X,1);
z = (y(1:rows(X), 1) == 1:num_etiquetas);
y1=z;
a1=X;
z2 = a1 * Theta1';
a2 = sigmoide(z2);
vector2 = ones(rows(z2),1);
z2=[vector2 z2];
a2=[vector2 a2];
z3=a2*Theta2';
g=a3=sigmoide(z3);
sumaj = sum(sum((-y1) .* log(g)- (1-y1) .* log(1 - g)));
sR = (1/m)*sumaj;
J = sR.+ (lambda/(2*m)*((sum(sum(Theta1(:, 2:end).^2)))+ sum(sum(Theta2(:,
2:end).^2)))) ;
sigma3=a3-y1;
sigma2=(sigma3*Theta2.*derivadaSigmoide(z2))(:, 2:end);
delta1 = sigma2'*a1;
delta2 = sigma3'*a2;
grad1 = delta1./m + (lambda/m)*[zeros(size(Theta1,1), 1) Theta1(:, 2:end)];
grad2 = delta2./m + (lambda/m)*[zeros(size(Theta2,1), 1) Theta2(:, 2:end)];
grad=[grad1(:);grad2(:)];
endfunction
